local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>af", builtin.find_files, {})
vim.keymap.set("n", "<leader>ff", builtin.git_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})

require("telescope").setup({
	defaults = {
		-- ...
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			previewer = false,
			prompt_title = "All Files",
		},
		git_files = {
			theme = "dropdown",
			previewer = false,
			prompt_title = "Files",
		},
	},
	extensions = {
		-- ...
	},
})
