
-- Toggleterm

require"toggleterm".setup({
	size = 20,
	autochdir = false,
	hide_number = false,
	start_in_insert = true,
	persist_mode = true,
	close_on_exit = true,
	direction = "float",
	float_opts = {
		border = "curved",
		width = 165,
		height = 40,
		winblend = 0
	},
	winbar = {
		enabled = false,
	}
})

local terminal = require"toggleterm.terminal".Terminal
local lazygit = terminal:new({ cmd = "lazygit", hidden = true })
local lazydocker = terminal:new({ cmd = "lazydocker", hidden = true })
local nnn = terminal:new({ cmd = "nnn -de", hidden = true })

  -- Functions

function nnn_toggle()
	nnn:toggle()
end

function lazygit_toggle()
	lazygit:toggle()
end

function lazydocker_toggle()
	lazydocker:toggle()
end
