
-- Lspsaga configuration

require"lspsaga".setup({
	use_saga_diagnostic_sign = true,
	error_sign = "",
	warn_sign = "",
	hint_sign = "",
	infor_sign = "",
	border_style = "rounded",
	code_action_icon = "",
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 40,
		virtual_text = true,
	},
})

