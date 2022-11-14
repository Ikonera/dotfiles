
-- Mappings configuration

local opts = { silent = true, noremap = true }

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

-- local function imap(shortcut, command)
--   map('i', shortcut, command)
-- end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

vim.g.mapleader = ' '
nmap("<Space>", "<Nop>")

-- Don't yank with `x`
nmap("x", '"_x')

	-- MarkdownPreview
nmap("<leader>md", "<cmd>MarkdownPreview<CR>")

	-- Nvim generics
nmap("<S-h>", "<C-w>h")
nmap("<S-j>", "<C-w>j")
nmap("<S-k>", "<C-w>k")
nmap("<S-l>", "<C-w>l")
nmap("<S-r>", "<C-w>r")
nmap("<leader>tt", "<cmd>tabnew<CR>")
nmap("<leader>tn", "<cmd>tabnext<CR>")
nmap("<leader>tp", "<cmd>tabprev<CR>")
nmap("<leader>tc", "<cmd>tabclo<CR>")
nmap("<leader>d", "<cmd>bdelete<CR>")
nmap("<leader>q", "<cmd>quitall<CR>")
nmap("<leader>x", "<cmd>xit<CR>")
nmap("<leader>w", "<cmd>write<CR>")
nmap("<leader>c", "<cmd>clo<CR>")
nmap("<leader>lg", "<cmd>lua lazygit_toggle()<CR>")
nmap("<leader>ld", "<cmd>lua lazydocker_toggle()<CR>")
nmap("<leader>nn", "<cmd>lua nnn_toggle()<CR>")
nmap("<leader>z", ":ToggleTerm size=40 direction=float<CR>")
