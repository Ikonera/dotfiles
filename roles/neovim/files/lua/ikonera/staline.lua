
-- Import Tokyonight colors

local colors = require"tokyonight.colors".setup()

-- Sta(b)line config

require"staline".setup({
	defaults = {
		expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
		left_separator  = "",
		right_separator = "",
		full_path	   = false,
		line_column	 = "[%l/%L] :%c 並%p%% ", -- `:h stl` to see all flags.
		fg			  = colors.bg_dark,  -- Foreground text color.
		bg			  = "none",	 -- Default background is transparent.
		inactive_color  = "#303030",
		inactive_bgcolor = "none",
		true_colors	 = true,	  -- true lsp colors.
		font_active	 = "bold,italic",	 -- "bold", "italic", "bold,italic", etc

		mod_symbol	  = "  ",
		lsp_client_symbol = " ",
		branch_symbol   = " ",
		cool_symbol	 = " ",	   -- Change this to override default OS icon.
		null_ls_symbol = "",		  -- A symbol to indicate that a source is coming from null-ls
	},
	mode_colors = {
		n = colors.blue,
		i = colors.yellow,
		c = colors.orange,
		v = colors.purple,   -- etc..
	},
	mode_icons = {
		n = " ",
		i = " ",
		c = " ",
		v = " ",   -- etc..
	},
	sections = {
		left = { '- ', '-mode', 'left_sep_double', ' ', 'branch', 'lsp' },
		mid  = { 'file_name' },
		right = { 'lsp_name', 'cool_symbol','right_sep_double', '-line_column' },
	},
	special_table = {
		NvimTree = { 'NvimTree', ' ' },
		packer = { 'Packer',' ' },		-- etc
	},
	lsp_symbols = {
		Error=" ",
		Info=" ",
		Warn=" ",
		Hint="",
	},
})
