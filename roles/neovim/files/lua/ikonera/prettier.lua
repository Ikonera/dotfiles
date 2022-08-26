
-- Prettier configuration

require"prettier".setup({
	bin = "prettier",
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"json",
		"yaml",
	},
})

require"null-ls".setup({
	on_attach = function (client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
		end
	end
})
