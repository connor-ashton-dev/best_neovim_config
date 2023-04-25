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
keymap("n", "<leader>q", ":qa!<CR>", opts)

--keeps current item in buffer when you past over something
keymap("x", "<leader>p", [["_dP]], opts)

--BUFFERS
--list buffers and switch
keymap("n", "<leader>bb", ":buffers<CR>:buffer<Space>", opts)
keymap("n", "<leader>bc", ":buffers<CR>:Bclose<Space>", opts)

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
