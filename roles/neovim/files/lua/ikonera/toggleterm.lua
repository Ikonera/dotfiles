
-- Toggleterm

require"toggleterm".setup({
	size = 20,
	open_mapping = "<space>z",
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

  -- Functions

function lazygit_toggle()
	lazygit:toggle()
end

function lazydocker_toggle()
	lazydocker:toggle()
end
