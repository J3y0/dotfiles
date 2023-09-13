-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = "left",
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  ui = {
    confirm = {
      remove = true,
      trash = true,
    },
  },
})

-- Open Nvim-Tree on startup
-- local api = require("nvim-tree.api")
-- Should check if already opened ?
-- api.tree.open()
