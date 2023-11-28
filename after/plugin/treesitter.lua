require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "vimdoc", "vim", "javascript", "typescript", "tsx", "c", "lua", "rust", "toml" },
	-- Install parsers synchronously (only applied to `ensure_installed`)
	autotag = {
		enable = true,
	},
	auto_install = true,
	indent = { enable = false },
	-- indent = { enable = true, disable = { "javascript" } },
	-- rainbow = {
	-- 	enable = true,
	-- 	extended_mode = true,
	-- 	max_file_lines = nil,
	-- },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "markdown" },
	},
})

require("ts_context_commentstring").setup({})
vim.g.skip_ts_context_commentstring_module = true
