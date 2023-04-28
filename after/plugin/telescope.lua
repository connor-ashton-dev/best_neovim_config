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
			prompt_title = "Git Files",
		},
	},
	extensions = {
		-- ...
	},
})
