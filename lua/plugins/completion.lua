-- Snippet engine and autocompletion
return {
	-- SNIPPET ENGINE (LuaSnip) - Configured for autotrigger
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp", -- Essential for complex triggers
		config = function()
			local ls = require("luasnip")
			-- Enable automatic snippets
			ls.setup({
				enable_autosnippets = true,
				update_events = "TextChanged,TextChangedI",
			})
			-- Load custom JSON snippets
			require("luasnip.loaders.from_vscode").lazy_load({
				paths = { vim.fn.stdpath("config") .. "/snippets" },
			})
		end,
	},

	-- AUTOCOMPLETION (Blink)
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"L3MON4D3/LuaSnip",
		},
		version = "*",
		opts = {
			keymap = {
				preset = "enter",
				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			},
			appearance = { nerd_font_variant = "mono" },
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			signature = { enabled = true },
		},
		opts_extend = { "sources.default" },
	},
}
