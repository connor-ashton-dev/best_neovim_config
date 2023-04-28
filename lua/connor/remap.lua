local opts = { noremap = true, silent = true }

--local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--MOVES BLOCKS OF TEXT
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

--KEEPS CURSOR IN THE MIDDLE OF SCREEN WHEN...
--jumping around with c and d
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- grepping
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

--FILE STUFF
--save and format
keymap("n", "<leader>w", ":w<CR>", opts)
--mega quit
keymap("n", "<leader>K", ":qa!<CR>", opts)
--kinda quit
keymap("n", "<leader>q", ":q!<CR>", opts)

--keeps current item in buffer when you past over something
keymap("x", "<leader>p", [["_dP]], opts)

--see all todo comments
keymap("n", "<leader>vc", ":TodoTelescope<CR>", opts)
--see errors

keymap("n", "<leader>ve", ":TroubleToggle<CR>", opts)

--BUFFERS
--list buffers and switch
keymap("n", "<leader>bc", ":Bdelete<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)
keymap("n", "<leader>bn", ":bNext<CR>", opts)

-- go into normal mode
-- keymap("i", "LL", "<ESC>", opts)
-- keymap("v", "LL", "<ESC>", opts)

--Easier window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- PWD
keymap("n", "<leader>d", ":! pwd<CR>", opts)

--explorer
keymap("n", "<leader>e", ":Ex<cr>", opts)

--RUST STUFF
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
]])
keymap("n", "Db", ":call vimspector#ToggleBreakpoint()<cr>", opts)
keymap("n", "Dw", ":call vimspector#AddWatch()<cr>", opts)
keymap("n", "De", ":call vimspector#Evaluate()<cr>", opts)

--TELESCOPE BINDINGS
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
vim.keymap.set("n", "<leader>gf", builtin.git_files, opts)
vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
vim.keymap.set("n", "<leader>ft", builtin.live_grep, opts)
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, opts)
vim.keymap.set("n", "<leader>vk", builtin.keymaps, opts)
vim.keymap.set("n", "<leader>vv", builtin.treesitter, opts)
vim.keymap.set("n", "<leader>sc", builtin.spell_suggest, opts)
vim.keymap.set("n", "<leader>ch", builtin.command_history, opts)
vim.keymap.set("n", "<leader>of", builtin.oldfiles, opts)
vim.keymap.set("n", "<leader>vo", builtin.vim_options, opts)
