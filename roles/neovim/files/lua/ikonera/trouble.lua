
-- Trouble configuration

require"trouble".setup({
	signs = {
		error = "",
		warning = "",
		hint = "",
		information = "",
		other = "",
	},
	use_diagnostic_signs = false,
	position = "bottom",
	icons = true,
	height = 4,
	mode = "workspace_diagnostics",
	auto_open = true,
})

