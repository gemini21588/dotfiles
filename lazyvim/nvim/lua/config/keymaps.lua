-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-[>", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-]>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-]>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-[>", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-x>", ":bp |bd #<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":qa!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<CR>", "o<ESC>", { noremap = true, silent = true })

vim.keymap.set("v", 'ya', '"ay', { noremap = true, silent = true })
vim.keymap.set("n", "yaa", '"ayy', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "pa", '"ap', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "Pa", '"aP', { noremap = true, silent = true })
vim.keymap.set("v", "da", '"ad', { noremap = true, silent = true })
vim.keymap.set("n", "daa", '"add', { noremap = true, silent = true })
