
-- Floaterm

vim.api.nvim_set_keymap('n', "<Space>nn", "<cmd>FloatermNew nnn -de<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>z", "<cmd>FloatermNew! --width=0.9 --height=0.9 <CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>lg", "<cmd>FloatermNew --width=0.9 --height=0.9 lazygit<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>ld", "<cmd>FloatermNew --width=0.9 --height=0.9 lazydocker<CR>", { silent = true, noremap = true })
