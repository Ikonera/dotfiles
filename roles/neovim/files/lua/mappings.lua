
-- Mappings configuration

local opts = { silent = true, noremap = true }

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

vim.g.mapleader = ' '

nmap("<SPACE>", "<Nop>")

	-- Telescope
nmap("<leader>f", "<cmd>Telescope find_files hidden=true<CR>")
nmap("<leader>b", "<cmd>Telescope buffers<CR>")
nmap("<leader>g", "<cmd>Telescope live_grep<CR>")

	-- LspSaga
nmap("ga", "<cmd>Telescope lsp_code_actions<CR>")
nmap("gd", "<cmd>Telescope lsp_definitions<CR>")
nmap("gi", "<cmd>Telescope lsp_implementations<CR>")
nmap("gh", "<cmd>Lspsaga hover_doc<CR>")
nmap("gl", "<cmd>Lspsaga show_line_diagnostics<CR>")
nmap("gr", "<cmd>Telescope lsp_references<CR>")
nmap("<leader>e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
nmap("<leader>r", "<cmd>Lspsaga diagnostic_jump_prev<CR>")

	-- MarkdownPreview
nmap("<leader>md", "<cmd>MarkdownPreview<CR>")

	-- Git
nmap("<leader>lg", "<cmd>LazyGit<CR>")

	-- Nnn
nmap("<leader>nn", "<cmd>NnnPicker %:p:h<CR>")

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
