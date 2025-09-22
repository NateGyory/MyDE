-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Resize with hjkl
vim.keymap.set("n", "<A-h>", ":vertical resize +2<CR>", { desc = "Move window left", silent = true })
vim.keymap.set("n", "<A-j>", ":resize +2<CR>", { desc = "Move window down", silent = true })
vim.keymap.set("n", "<A-k>", ":resize -2<CR>", { desc = "Move window up", silent = true })
vim.keymap.set("n", "<A-l>", ":vertical resize -2<CR>", { desc = "Move window right", silent = true })

-- Save file and quit
vim.keymap.set("n", "<Leader>w", ":w<Cr>", { desc = "Save file", silent = true, nowait = true })
vim.keymap.set("n", "<Leader>q", ":q<Cr>", { desc = "Quit file", silent = true, nowait = true })

-- jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Vsplit copy buffer
vim.keymap.set("n", "<Leader>v", ":vsplit<CR><C-w>w", { desc = "Vsplit and move to it", silent = true })
