-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	--USER PLUGINS

	--TELESCOPE
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	--COLORS
	-- use({
	-- 	"rose-pine/neovim",
	-- 	as = "rose-pine",
	-- 	-- config = function()
	-- 	-- 	vim.cmd("colorscheme rose-pine")
	-- 	-- ennd,
	-- })

	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	--TREESITTER
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		requires = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
	})

	--HARPOON
	use("ThePrimeagen/harpoon")

	--UndoTree
	use("mbbill/undotree")

	-- Vim Fugitive
	use("tpope/vim-fugitive")

	--LSP STUFF
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	--Completion
	use({
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/vim-vsnip",
	})

	--WINBAR
	use({ "fgheng/winbar.nvim" })
	--LIGHTSPEED
	use("ggandor/lightspeed.nvim")

	--EDITOR STUFF
	--autotag and pair
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("windwp/nvim-ts-autotag")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	})

	--null-ls for formatting
	use("jose-elias-alvarez/null-ls.nvim")

	--comments
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	--errors
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	--GIT SIGNS
	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})

	--RUST STUFF
	use("puremourning/vimspector")
end)
