-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation

-- Save & Close
keymap("n", "<Leader>w", ":w<Cr>", opts)
keymap("n", "<Leader>q", ":q<Cr>", opts)

-- Explorer window
keymap("n", "<Leader>n", ":NERDTreeToggle<Cr>", opts)
keymap("n", "<Leader>m", ":NERDTreeFind<Cr>", opts)

-- Explorer window
keymap("n", "<Leader>a", ":Telescope live_grep<Cr>", opts)

-- Resize with arrows
keymap("n", "<A-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-j>", ":resize +2<CR>", opts)
keymap("n", "<A-k>", ":resize -2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize -2<CR>", opts)

-- Vsplit copy buffer
keymap("n", "<Leader>v", ":vsplit<CR><C-w>w", opts)

-- GitGutter Remaps
-- TODO

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
