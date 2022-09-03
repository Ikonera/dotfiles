
-- Lspsaga configuration

require"lspsaga".init_lsp_saga({
	border_style = "rounded",
	saga_winblend = 0,
})

vim.api.nvim_set_keymap('n', "gh", "<cmd>Lspsaga hover_doc<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "go", "<cmd>LSoutlineToggle<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "gf", "<cmd>Lspsaga lsp_finder<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "ga", "<cmd>Lspsaga code_action<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "R", "<cmd>Lspsaga rename<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "gl", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>r", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "gi", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", { silent = true, noremap = true })
