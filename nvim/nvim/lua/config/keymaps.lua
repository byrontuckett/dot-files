-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Exits terminal mode with jk or jf
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
vim.keymap.set(
  "n",
  '<Leader>q"',
  'ciw""<Esc>P',
  { noremap = true, silent = true, desc = "Change word to double quoted string" }
)
vim.keymap.set(
  "n",
  "<Leader>q'",
  "ciw''<Esc>P",
  { noremap = true, silent = true, desc = "Change word to single quoted string" }
)
-- nnoremap <Leader>q' ciw''<Esc>P

-- Perusing code faster with K and J
vim.keymap.set({ "n", "v" }, "K", "5k", { noremap = true, desc = "Up faster" })
vim.keymap.set({ "n", "v" }, "J", "5j", { noremap = true, desc = "Down faster" })
