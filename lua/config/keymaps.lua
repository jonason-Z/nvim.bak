-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- python 运行快捷键
vim.keymap.set({ "n", "i" }, "<F5>", '<Cmd>TermExec cmd="python %"<CR>')

-- 将esc映射到jk
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
