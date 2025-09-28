from kitty.boss import get_boss
from kitty.fast_data_types import Screen
from kitty.rgb import to_color
from kitty.tab_bar import (
    DrawData,
    ExtraData,
    Formatter,
    TabBarData,
    as_rgb,
    draw_attributed_string,
    draw_tab_with_powerline,
)

LEFT_HALF_CIRCLE = ""
TERMINAL_ICON = " "
# REFRESH_TIME = 10


def _get_active_process_name_cell() -> dict:
    cell = {"icon": TERMINAL_ICON, "icon_bg_color": "#a8e4a4", "text": ""}
    boss = get_boss()

    # Error 1: No boss instance found.
    if not boss:
        cell["text"] = "Err 1"
        return cell

    active_window = boss.active_window
    # Error 2: No active window found
    if not active_window:
        cell["text"] = "Err 2"
        return cell
    # Error 3: No process is associated with the active window.
    if not active_window.child:
        cell["text"] = "Err 3"
        return cell

    foreground_processes = active_window.child.foreground_processes
    # Error 4: No foreground process found.
    if not foreground_processes or not foreground_processes[0]["cmdline"]:
        cell["text"] = "Err 4"
        return cell
    long_process_name = foreground_processes[0]["cmdline"][0]
    cell["text"] = long_process_name.rsplit("/", 1)[-1]

    return cell


def _create_cells() -> list[dict]:
    return [_get_active_process_name_cell()]


def _draw_right_status(screen: Screen, is_last: bool, draw_data: DrawData) -> int:
    if not is_last:
        return 0
    draw_attributed_string(Formatter.reset, screen)

    cells = _create_cells()
    right_status_length = 0
    for c in cells:
        right_status_length += 3 + len(c["icon"]) + len(c["text"])

    screen.cursor.x = screen.columns - right_status_length

    default_bg = as_rgb(int(draw_data.default_bg))
    tab_fg = as_rgb(int(draw_data.inactive_fg))

    screen.cursor.bg = default_bg
    for c in cells:
        icon_bg_color = as_rgb(int(to_color(c["icon_bg_color"])))
        screen.cursor.fg = icon_bg_color
        screen.draw(LEFT_HALF_CIRCLE)

        screen.cursor.bg = icon_bg_color
        screen.cursor.fg = 1
        screen.draw(c["icon"])

        screen.cursor.bg = as_rgb(int(to_color("#383444")))
        screen.cursor.fg = tab_fg
        screen.draw(f" {c['text']} ")

    return screen.cursor.x


def _redraw_tab_bar(_) -> None:
    tm = get_boss().active_tab_manager
    if tm is not None:
        tm.mark_tab_bar_dirty()


# timer_id = None


def draw_tab(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_title_length: int,
    index: int,
    is_last: bool,
    extra_data: ExtraData,
) -> int:
    # global timer_id
    # if timer_id is None:
    #     timer_id = add_timer(_redraw_tab_bar, REFRESH_TIME, True)
    draw_tab_with_powerline(
        draw_data, screen, tab, before, max_title_length, index, is_last, extra_data
    )
    _draw_right_status(screen, is_last, draw_data)
    return screen.cursor.x
