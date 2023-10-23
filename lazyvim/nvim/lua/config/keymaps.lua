-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("i", "jkk", "<ESC>A", { noremap = true, silent = true })
vim.keymap.set("n", "<C-[>", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-]>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-x>", ":bp |bd #<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":qa!<CR>", { noremap = true, silent = true })
