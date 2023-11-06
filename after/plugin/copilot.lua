vim.g.copilot_filetypes = {
	markdown = true,
	tex = true,
}

-- set C-Y to accept copilot suggestion
vim.cmd([[imap <silent><script><expr> <C-y> copilot#Accept("\<C-Y>")]])
vim.g.copilot_no_tab_map = true
-- set keymap for C-N to cycle through copilot suggestions with <plug>
vim.cmd([[imap <C-l> <Plug>(copilot-next)]])
vim.cmd([[imap <C-h> <Plug>(copilot-previous)]])
vim.cmd([[imap <C-d> <Plug>(copilot-dismiss)]])
