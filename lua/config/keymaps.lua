-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Compile and run current Java file
vim.keymap.set("n", "<leader>rj", function()
  local file = vim.fn.expand("%:p")
  local dir = vim.fn.expand("%:p:h")
  local class = vim.fn.expand("%:t:r")
  vim.cmd("write")
  vim.cmd(string.format("split | terminal cd %s && javac %s && java %s", dir, file, class))
end, { desc = "Run Java file" })
