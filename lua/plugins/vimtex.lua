return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		-- Viewer PDF
		vim.g.vimtex_view_method = "sioyek"
		vim.g.vimtex_view_sioyek_exe = "sioyek"
		vim.g.vimtex_view_forward_search_on_start = 1

		-- Compilatore
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
			build_dir = "",
			callback = 1,
			continuous = 1,
			executable = "latexmk",
			options = {
				"-pdf",
				"-verbose",
				"-file-line-error",
				"-synctex=1",
				"-interaction=nonstopmode",
			},
		}

		-- Quickfix
		vim.g.vimtex_quickfix_mode = 0
		vim.g.vimtex_quickfix_open_on_warning = 0

		-- Syntax
		vim.g.tex_flavor = "latex"
		vim.g.tex_conceal = "abdmg"
		vim.g.vimtex_syntax_enabled = 1

		vim.cmd([[
            filetype plugin indent on
            syntax enable
            set conceallevel=2
        ]])

		-- Keymaps
		vim.keymap.set("n", "<leader>tt", ":VimtexTocToggle<CR>", { desc = "Toggle TOC" })
		vim.keymap.set("n", "<leader>tv", ":VimtexView<CR>", { desc = "View PDF" })
		vim.keymap.set("n", "<leader>tc", ":VimtexCompile<CR>", { desc = "Compile" })
		vim.keymap.set("n", "<leader>ts", ":VimtexStop<CR>", { desc = "Stop compiler" })
		vim.keymap.set("n", "<leader>te", ":VimtexErrors<CR>", { desc = "Show errors" })
	end,
}
