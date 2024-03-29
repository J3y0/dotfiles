# Created by newuser for 5.9

# STARTING COMMAND
eval "$(starship init zsh)"

# Launching pokemon script
# pokemon-colorscripts -r

# Launching tmux
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

# Launching Zellij
# eval "$(zellij setup --generate-auto-start zsh)"


## PLUGIN
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


## ALIASES ##
alias ll="exa --icons -gal --group-directories-first"
alias ls="exa --icons -g --group-directories-first"
alias tree="exa --icons -g --tree --group-directories-first"
alias ..="cd .."
alias jm=". cd_fzf"

# Dotfiles repo alias
alias config="/usr/bin/git --git-dir=dotfiles.git --work-tree=$HOME"
alias 'git tr'='git log --graph --pretty=oneline --abbrev-commit'

alias cp="cp -v"
alias rm="rm -v"

# Emacs aliases
# alias emacs="emacsclient -c -a 'emacs'"

# changes the editor in the terminal, to edit long commands.
export EDITOR='nvim'
export VISUAL='nvim'

export QT_QPA_PLATFORMTHEME=qt5ct

# PATH CONFIG
export PATH="$PATH:$HOME/Documents/binary_ninja/binaryninja:$HOME/.nimble/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/go/bin:$HOME/repos/volatility3:$HOME/.config/scripts:$HOME/miniconda3/bin"

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Launch autojump
[[ -s /home/math/.autojump/etc/profile.d/autojump.sh ]] && source /home/math/.autojump/etc/profile.d/autojump.sh



# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

[ -s ~/.luaver/luaver ] && . ~/.luaver/luaver


# Miniconda3
[ -f /home/math/miniconda3/etc/profile.d/conda.sh ] && source /home/math/miniconda3/etc/profile.d/conda.sh

