-- LOCALES
local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

-- Dashboard
g.dashboard_default_executive = "telescope"

-- File format

  -- General
opt.tabstop = 4
opt.autoindent = true
opt.shiftwidth = 4
opt.rnu = true
opt.nu = true
opt.softtabstop = 4
opt.cursorline = true
opt.swapfile = false
opt.completeopt = { "menu", "menuone", "noselect" }

-- Markdown preview
g.nvim_markdown_preview_theme = "github"
g.nvim_markdown_preview_format = "markdown"

-- Highlight groups
vim.api.nvim_set_hl(0, "Floaterm", { bg="#1a1b26" })
vim.api.nvim_set_hl(0, "FloatermBorder", { bg="#1a1b26" })

-- Vim LSP diagnostics
vim.diagnostic.config({
    signs = false,
    update_in_insert = false,
	underline = true,
    severity_sort = true,
    virtual_text = {
		prefix = ""
	},
})

