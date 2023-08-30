local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
local config_status_ok = pcall(require, "nvim-tree")
if not config_status_ok then
	return
end

-- local tree_cb = nvim_tree_config.nvim_tree_callback

vim.api.nvim_create_autocmd({ "QuitPre" }, {
	callback = function()
		vim.cmd("NvimTreeClose")
	end,
})

nvim_tree.setup({
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	renderer = {
		root_folder_modifier = ":t",
		icons = {
			webdev_colors = true,
			git_placement = "before",
			modified_placement = "after",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
				modified = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "󰆤",
				modified = "●",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "󱦟",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "◌",
					deleted = "",
					ignored = "",
				},
			},
		},
	},
	tab = {
		sync = {
			open = true,
			close = true,
			ignore = {},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		-- show_on_open_dirs = false,
		icons = {
			hint = "󰍉",
			info = "",
			warning = "",
			error = "",
		},
	},
	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
	git = {
		show_on_dirs = false,

		ignore = false,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	view = {
		width = 35,
		--[[ height = 30, ]]
		hide_root_folder = false,
		side = "right",
		--[[ auto_resize = true, ]]
		number = false,
		relativenumber = false,
	},
})
