-- Code formatting with Conform.nvim
return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					html = { "prettier" },
					css = { "prettier" },
					json = { "prettier" },
					markdown = { "prettier" },
					java = { "google-java-format" },
					c = { "clang-format" },
					cpp = { "clang-format" },
				},
				-- Auto format on save
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
			-- Manual format keybinding
			vim.keymap.set({ "n", "v" }, "<leader>f", function()
				require("conform").format({ async = true, lsp_fallback = true })
			end, { desc = "Format file or selection" })
		end,
	},
}
