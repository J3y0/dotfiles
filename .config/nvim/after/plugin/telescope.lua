local builtin = require('telescope.builtin')

-- In files search
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Search in opened buffers
vim.keymap.set('n', "<leader>bi", builtin.buffers, {})

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
-- require("telescope").load_extension "file_browser"
