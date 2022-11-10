
-- LSP Config
local mason = require"mason"
local masonLsp = require"mason-lspconfig"
local lspconfig = require"lspconfig"
local path = vim.split(package.path, ";")

mason.setup({
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		}
	}
})

masonLsp.setup({
	ensure_installed = {
		"rust_analyzer",
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
})

for _, server in ipairs(masonLsp.get_installed_servers()) do
	if server == "sumneko_lua" then
		lspconfig[server].setup({
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
	elseif server == "html" then
		lspconfig[server].setup({
			filetypes = { "html", "typescriptreact", "typescript.tsx", "javascriptreact", "javascript.jsx" }
		})
	elseif server == "yamlls" then
		lspconfig[server].setup({
			filetypes = { "yaml", "yml" }
		})
	elseif server == "eslint" then
		lspconfig[server].setup({
			filetypes = { "html" }
		})
	else
		lspconfig[server].setup({})
	end
end
