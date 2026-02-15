return {
	{
		"stevearc/aerial.nvim",
		event = "User AstroFile", -- Carica il plugin solo quando apri un file
		opts = {
			-- Opzioni di configurazione
			on_attach = function(bufnr)
				-- Salto avanti/indietro tra funzioni/classi
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Aerial Previous" })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Aerial Next" })
			end,
		},
		-- Definiamo i tasti rapidi in modo pulito
		keys = {
			{ "<leader>o", "<cmd>AerialToggle!<CR>", desc = "Toggle Aerial" },
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
}
