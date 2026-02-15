return {
	{
		"SmiteshP/nvim-navic",
		lazy = false,

		opts = {
			highlight = true,
			separator = " > ",
			depth_limit = 5,
			lazy_update_context = true,

			click = true,

			lsp = {
				auto_attach = true,
				preference = nil,
			},
		},
	},
}
