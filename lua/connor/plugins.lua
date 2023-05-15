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

  --FILE BROWSERS

  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
  })

  -- use({
  -- 	"nvim-telescope/telescope-file-browser.nvim",
  -- 	requires = {
  -- 		"nvim-telescope/telescope.nvim",
  -- 		"nvim-lua/plenary.nvim",
  -- 		"nvim-tree/nvim-web-devicons",
  -- 		"lewis6991/gitsigns.nvim",
  -- 	},
  -- })

  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({

        transparent_background = true,
      })
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

  --CLOSE BUFFERS
  use("moll/vim-bbye")

  --WHICHKEY
  use("folke/which-key.nvim")

  --HARPOON
  use("ThePrimeagen/harpoon")

  --UndoTree
  use("mbbill/undotree")

  -- Vim Fugitive
  use("tpope/vim-fugitive")

  --	LSP STUFF
  use({
    "williamboman/mason.nvim",
    run = ":MasonUpdate", -- :MasonUpdate updates registry contents
  })
  use({
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })
  --Completion
  use("hrsh7th/nvim-cmp")            -- The completion plugin
  use("hrsh7th/cmp-buffer")          -- buffer completions
  use("hrsh7th/cmp-path")            -- path completions
  use("hrsh7th/cmp-cmdline")         -- cmdline completions
  use("saadparwaiz1/cmp_luasnip")    -- snippet completions
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")        -- snippets
  use("L3MON4D3/LuaSnip")            --snippet engine
  use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

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

  --view pictures
  use({
    "edluffy/hologram.nvim",
    config = function()
      require("hologram").setup({
        auto_display = true,
      })
    end,
  })

  use("p00f/nvim-ts-rainbow")

  use("lukas-reineke/indent-blankline.nvim")

  --GITHUB COPILOT
  use("github/copilot.vim")
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

  use({
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  })

  use("karb94/neoscroll.nvim")
  --GIT SIGNS
  -- use({
  --   "lewis6991/gitsigns.nvim",
  --   -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  -- })

  --RUST STUFF
  use({
    "simrat39/rust-tools.nvim",
  })
  use("mfussenegger/nvim-dap")

  --GO STUFF
  use("fatih/vim-go", { run = ":GoUpdateBinaries" })
  --TMUX navigation
  use("alexghergh/nvim-tmux-navigation")
  --end of everything
end)
