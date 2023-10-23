-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-[>", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-]>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-]>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-[>", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":qa!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<CR>", "o<ESC>", { noremap = true, silent = true })

vim.keymap.set("v", 'ya', '"ay', { noremap = true, silent = true })
vim.keymap.set("n", "yaa", '"ayy', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "pa", '"ap', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "Pa", '"aP', { noremap = true, silent = true })
vim.keymap.set("v", "da", '"ad', { noremap = true, silent = true })
vim.keymap.set("n", "daa", '"add', { noremap = true, silent = true })

-- Create new file in same directory with opening buffer
vim.keymap.set("n", "<leader>nf", function()
  local file_path = vim.fn.expand("%:p:h")
  local new_file = vim.fn.input("New file name: ", file_path .. "/", "file")
  if new_file ~= "" then
    vim.cmd("e " .. new_file)
  end
end, { desc = "Create new file in same directory" })

-- Close buffer
vim.keymap.set("n", "<C-x>", function()
  local open_buffers = vim.api.nvim_list_bufs()
  local open_documents = 0

  for _, buf in ipairs(open_buffers) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.fn.bufname(buf) ~= "" then
      open_documents = open_documents + 1
    end
  end
  if open_documents > 1 then
    vim.cmd("bp |bd #")
  else
    vim.cmd("BufferLineGroupClose ungrouped")
  end
end, { noremap = true, silent = true })
