vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	--TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.1",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"ahmedkhalf/project.nvim",
	--FILE BROWSERS
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- { "ellisonleao/gruvbox.nvim", priority = 1000 },
	-- { "rose-pine/neovim", name = "rose-pine" },

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},
	"lewis6991/gitsigns.nvim",
	--TREESITTER
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
	},

	--CLOSE BUFFERS
	-- "moll/vim-bbye"
	"famiu/bufdelete.nvim",

	--WHICHKEY
	"folke/which-key.nvim",

	--HARPOON
	"ThePrimeagen/harpoon",

	--UndoTree
	"mbbill/undotree",

	-- Vim Fugitive
	"tpope/vim-fugitive",
	--	LSP STUFF
	{
		"williamboman/mason.nvim",
	},

	{
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	--Completion
	"hrsh7th/nvim-cmp", -- The completion plugin
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"hrsh7th/cmp-cmdline", -- cmdline completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua", -- snippets
	"L3MON4D3/Luasnip", --snippet engine
	"rafamadriz/friendly-snippets", -- a bunch of snippets to

	--WINBAR
	{ "fgheng/winbar.nvim" },
	--Motions
	-- "ggandor/lightspeed.nvim"
	{ "folke/flash.nvim" },
	-- lazy.nvim
	-- {
	-- 	"folke/noice.nvim",
	-- 	event = "VeryLazy",
	-- 	opts = {
	-- 		-- add any options here
	-- 	},
	-- 	dependencies = {
	-- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- OPTIONAL:
	-- 		--   `nvim-notify` is only needed, if you want to use the notification view.
	-- 		--   If not available, we use `mini` as the fallback
	-- 		"rcarriga/nvim-notify",
	-- 	},
	-- },
	--EDITOR STUFF
	--autoversion and pair
	{
		"windwp/nvim-autopairs",
		opts = {},
	},

	"windwp/nvim-ts-autotag",
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"kylechui/nvim-surround",
		version = "*", --  for stability; omit to  `main` branch for the latest features
	},

	-- escape with jk or jj without delay
	{
		"max397574/better-escape.nvim",
		opts = {},
	},

	-- "HiPhish/nvim-ts-rainbow2"
	"HiPhish/rainbow-delimiters.nvim",

	--GITHUB COPILOT
	"github/copilot.vim",
	--null-ls for formatting
	"jose-elias-alvarez/null-ls.nvim",

	--comments
	"numToStr/Comment.nvim",

	"JoosepAlviste/nvim-ts-context-commentstring",

	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		opts = {},
	},

	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
		{
			"nvim-neorg/neorg",
			build = ":Neorg sync-parsers",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
	},

	{ "michaelb/sniprun", build = "sh ./install.sh" },
	--RUST STUFF
	"simrat39/rust-tools.nvim",

	"mfussenegger/nvim-dap",

	--GO STUFF
	"fatih/vim-go",
	--TMUX navigation
	"alexghergh/nvim-tmux-navigation",

	"epwalsh/obsidian.nvim",

	"iamcco/markdown-preview.nvim",

	--FLUTTER
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},

	"reisub0/hot-reload.vim",
}
require("lazy").setup(plugins, {})
