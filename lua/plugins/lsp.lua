-- LSP configuration with Mason and language servers
return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"saghen/blink.cmp",
			"nvim-java/nvim-java",
		},
		config = function()
			-- Initialize Java support (configures Lombok and Spring Boot automatically)
			require("java").setup()
			require("mason").setup()

			-- LSP Keybindings
			local on_attach = function(_, bufnr)
				local opts = { buffer = bufnr, silent = true }
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			end

			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			require("mason-lspconfig").setup({
				ensure_installed = { "texlab", "lua_ls", "jdtls", "pyright" },
				handlers = {
					-- Default handler
					function(server_name)
						lspconfig[server_name].setup({
							capabilities = capabilities,
							on_attach = on_attach,
						})
					end,

					-- TeXLab (LaTeX)
					["texlab"] = function()
						lspconfig.texlab.setup({
							capabilities = capabilities,
							on_attach = on_attach,
							settings = {
								texlab = {
									build = {
										executable = "latexmk",
										args = {
											"-pdf",
											"-interaction=nonstopmode",
											"-synctex=1",
											"%f",
										},
										onSave = true,
										forwardSearchAfter = true,
									},
									forwardSearch = {
										executable = "sioyek",
										args = {
											"--reuse-window",
											"--forward-search-file",
											"%f",
											"--forward-search-line",
											"%l",
											"%p",
										},
									},
									chktex = {
										onOpenAndSave = true,
										onEdit = false,
									},
								},
							},
						})
					end,

					-- Lua LS
					["lua_ls"] = function()
						lspconfig.lua_ls.setup({
							capabilities = capabilities,
							on_attach = on_attach,
							settings = {
								Lua = { diagnostics = { globals = { "vim" } } },
							},
						})
					end,

					-- Java JDTLS
					["jdtls"] = function()
						lspconfig.jdtls.setup({
							capabilities = capabilities,
							on_attach = on_attach,
							settings = {
								java = {
									configuration = {},
								},
							},
						})
					end,

					-- Python (Pyright)
					["pyright"] = function()
						lspconfig.pyright.setup({
							capabilities = capabilities,
							on_attach = on_attach,
							settings = {
								python = {
									analysis = {
										autoSearchPaths = true,
										useLibraryCodeForTypes = true,
										diagnosticMode = "workspace",
									},
								},
							},
						})
					end,
				},
			})
		end,
	},
}
