require("lualine").setup({
	options = {
		theme = "dracula-nvim",
		disabled_filetypes = { "NvimTree", "packer", "alpha" },
	},
})

-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
-- local colors = {
--   blue   = '#80a0ff',
--   cyan   = '#79dac8',
--   black  = '#080808',
--   white  = '#c6c6c6',
--   red    = '#ff5189',
--   violet = '#d183e8',
--   orange = '#fea69a',
--   grey   = '#303030',
--   nvim   = "#24273a",
-- }
--
-- local bubbles_theme = {
-- 	normal = {
-- 		a = { fg = colors.black, bg = colors.orange },
-- 		b = { fg = colors.white, bg = colors.grey },
-- 		c = { fg = colors.nvim, bg = colors.clear },
-- 	},
-- 	insert = { a = { fg = colors.black, bg = colors.blue } },
-- 	visual = { a = { fg = colors.black, bg = colors.cyan } },
-- 	replace = { a = { fg = colors.black, bg = colors.red } },
-- 	inactive = {
-- 		a = { fg = colors.white, bg = colors.clear },
-- 		b = { fg = colors.white, bg = colors.clear },
-- 		c = { fg = colors.black, bg = colors.clear },
-- 	},
-- }
--
-- require("lualine").setup({
-- 	options = {
-- 		theme = bubbles_theme,
-- 		component_separators = "|",
-- 		section_separators = { left = "", right = "" },
-- 		disabled_filetypes = { "NvimTree", "packer" },
-- 	},
-- 	sections = {
-- 		lualine_a = {
-- 			{ "mode", separator = { left = "" }, right_padding = 2 },
-- 			-- { "mode", separator = { left = "" } },
-- 		},
-- 		lualine_b = { "filename", "branch" },
-- 		lualine_c = {},
-- 		lualine_x = {},
-- 		lualine_y = { "filetype", "diagnostics" },
-- 		lualine_z = {
-- 			{ "location", separator = { right = "" }, left_padding = 2 },
-- 			-- { "location", separator = { right = "" } },
-- 		},
-- 	},
-- 	inactive_sections = {
-- 		lualine_a = { "filename" },
-- 		lualine_b = {},
-- 		lualine_c = {},
-- 		lualine_x = {},
-- 		lualine_y = {},
-- 		lualine_z = { "location" },
-- 	},
-- 	tabline = {},
-- 	extensions = {},
-- })
