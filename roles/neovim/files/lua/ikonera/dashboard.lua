local board = require("dashboard")
-- local home = os.getenv("HOME")

board.custom_center = {
	{ icon = "   ", desc = "Open workspace files          ", action = "Telescope find_files find_command=rg" },
	-- { icon = "", desc = "", action = "" },
	-- { icon = "", desc = "", action = "" },
	-- { icon = "", desc = "", action = "" },
	-- { icon = "", desc = "", action = "" },
	-- { icon = "", desc = "", action = "" },
	-- { icon = "   ", desc = "Open personnal dotfiles       ", action = "" },
}