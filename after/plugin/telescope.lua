require("telescope").setup({
	defaults = {
		-- prompt_prefix = " ",
		-- selection_caret = ">",
		path_display = { "smart" },
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
