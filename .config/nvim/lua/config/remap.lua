vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay centered when scrolling down or up
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- misc
vim.keymap.set("n", "<leader>so", "<cmd>:so<CR>", { desc = "Source current file" })

-------- WINDOW
-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
vim.keymap.set("n", "<leader>wv", "<C-w>v<C-w>l", { desc = "Split vertically and go to the right window" })
vim.keymap.set("n", "<leader>ws", "<C-w>s<C-w>j", { desc = "Split horizontally and go to the down window" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Close window" })

-- Resize window
vim.keymap.set("n", "<C-r>k", "<cmd>horizontal resize -5<CR>")
vim.keymap.set("n", "<C-r>j", "<cmd>horizontal resize +5<CR>")
vim.keymap.set("n", "<C-r>h", "<cmd>vertical resize -5<CR>")
vim.keymap.set("n", "<C-r>l", "<cmd>vertical resize +5<CR>")

--------- BUFFER
-- Kill buffer and keep split
vim.keymap.set("n", "<leader>bk", "<cmd>bp|bd #<CR>")

--------- TAB
-- Open current buffer in a new tab (Allow me to zoom on the current window)
-- It is kind of a fullscreen on current buffer, explaining the '<leader>tf'
vim.keymap.set("n", "<leader>tf", "<cmd>tab split<CR>", { desc = "Open in a new tab current buffer" })

-- Move through tabs
vim.keymap.set("n", "<M-&>", "<cmd>tabn 1<CR>")
vim.keymap.set("n", "<M-é>", "<cmd>tabn 2<CR>")
vim.keymap.set("n", "<M-\">", "<cmd>tabn 3<CR>")
vim.keymap.set("n", "<M-'>", "<cmd>tabn 4<CR>")

-- Create and close tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open an empty tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabc<CR>", { desc = "Close the current tab" })

--------- FILE BROWSER
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>")

----------------
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
