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
opt.list = true
opt.listchars = {tab = '| ', trail = '·'}
opt.cursorline = true
opt.swapfile = false

opt.completeopt = { "menu", "menuone", "noselect" }

-- Markdown preview
g.nvim_markdown_preview_theme = "github"
g.nvim_markdown_preview_format = "markdown"

-- Colorschemes config

vim.o.termguicolors = true

  -- Tokyonight
g.tokyonight_style = "night"
g.tokyonight_transparent = true
g.tokyonight_italic_comments = true
g.tokyonight_italic_functions = false
g.tokyonight_italic_variables = true
g.tokyonight_italic_keywords = true
g.tokyonight_terminal_colors = true
g.tokyonight_dark_float = false
g.tokyonight_colors = {
	bg_float = "none"
}
g.syntax_on = true

-- Vim commands that don't work with Lua
cmd([[
  colorscheme tokyonight
  filetype plugin indent on
]])

