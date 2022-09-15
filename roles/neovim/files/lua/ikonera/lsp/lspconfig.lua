
-- LSP Config
local lspinstall = require"nvim-lsp-installer"
local lspconfig = require"lspconfig"
local path = vim.split(package.path, ";")

lspinstall.setup {
	ensure_installed = {
		"rust_analyser",
		"prismals",
		"sumneko_lua",
		"tsserver",
		"ansiblels",
		"dockerls",
		"yamlls",
		"cssls",
		"html",
		"eslint",
		"tailwindcss",
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
	if server.name == "sumneko_lua" then
		lspconfig[server.name].setup({
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
						path = path
					},
					worskspace = {
						library = vim.api.nvim_get_runtime_file('', true)
					},
					diagnostics = {
						globals = { "vim" }
					},
					telemetry = {
						enable = false
					},
				}
			},
		})
	elseif server.name == "html" then
		lspconfig[server.name].setup({
			filetypes = { "html", "typescriptreact", "typescript.tsx", "javascriptreact", "javascript.jsx" }
		})
	elseif server.name == "eslint" then
		lspconfig[server.name].setup({
			filetypes = { "html" }
		})
	else
		lspconfig[server.name].setup({})
	end
end
