
-- LSP Config
local mason = require"mason"
local masonLsp = require"mason-lspconfig"
local lspconfig = require"lspconfig"
local capabilities = vim.lsp.protocol.make_client_capabilities()
local updated_capabilities = require"cmp_nvim_lsp".update_capabilities(capabilities)
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
		"emmet_ls",
		"bashls",
		"terraformls",
		"tflint",
	},
	automatic_installation = true,
})

for _, server in ipairs(masonLsp.get_installed_servers()) do
	if server == "sumneko_lua" then
		lspconfig[server].setup({
			capabilities = updated_capabilities,
			settings = {
				Lua = {
					completion = {
						callSnippet = "Replace",
					},
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
			capabilities = updated_capabilities,
			filetypes = { "html", "typescriptreact", "typescript.tsx", "javascriptreact", "javascript.jsx" }
		})
	elseif server == "yamlls" then
		lspconfig[server].setup({
			capabilities = updated_capabilities,
			settings = {
				yaml = {
					schemas = {
						kubernetes = "globPattern"
					}
				}
			},
			filetypes = { "yaml", "yml" }
		})
	elseif server == "eslint" then
		lspconfig[server].setup({
			capabilities = updated_capabilities,
			filetypes = { "html" }
		})
	else
		lspconfig[server].setup({
			capabilities = updated_capabilities,
		})
	end
end
