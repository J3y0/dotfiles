local builtin = require('telescope.builtin')

-- In files search
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Search in opened buffers
vim.keymap.set('n', "<leader>bi", builtin.buffers, {})
