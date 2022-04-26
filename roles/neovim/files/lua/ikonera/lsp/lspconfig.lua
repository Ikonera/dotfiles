
-- LSP Config
local lsp = require"nvim-lsp-installer"
local luadev = require("lua-dev")

lsp.on_server_ready(function(server)

	local opts = {}

	if server.name == "sumneko_lua" then
		opts = luadev.setup()
	end

	server:setup(opts)

end)
