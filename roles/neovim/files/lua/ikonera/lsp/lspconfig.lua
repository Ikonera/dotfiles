
-- LSP Config
local lspinstall = require"nvim-lsp-installer"
local lspconfig = require"lspconfig"

lspinstall.setup {
	ensure_installed = {
		"rust_analyser",
		"prismals",
		"sumneko_lua",
		"tsserver",
		"ansiblels",
		"dockerls",
		"yamlls",
		"html",
		"eslint",
	},
	automatic_installation = true,
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		}
	}
}

for _, server in ipairs(lspinstall.get_installed_servers()) do
	lspconfig[server.name].setup{}
end
