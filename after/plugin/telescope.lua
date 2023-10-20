require("telescope").setup({
	defaults = {
		-- prompt_prefix = " ",
		-- selection_caret = ">",
		path_display = { "smart" },
	},

	pickers = {
		find_files = {
			find_command = { "rg", "--files", "-g", "!.git" },
			-- theme = "dropdown",
			-- previewer = false,
			-- no_ignore = true,
			hidden = true,
			prompt_title = "All Files",
		},

		git_files = {
			theme = "dropdown",
			previewer = false,
			prompt_title = "Git Files",
		},
		spell_suggest = {
			theme = "cursor",
			-- previewer = false,
			prompt_title = "Spelling Suggestions",
		},

		treesitter = {
			theme = "ivy",
			-- previewer = true,
			prompt_title = "Variables",
		},
	},
	extensions = {
		-- ...
	},
})
