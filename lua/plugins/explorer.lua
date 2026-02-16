-- File explorer and buffer management
return {
	-- File explorer
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				popup_border_style = "single",
				window = {
					position = "left",
					width = 30,
				},
				filesystem = {
					follow_current_file = { enabled = true },
					filtered_items = {
						visible = true,
					},
				},
			})
			vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Explorer" })
		end,
	},

	-- Buffer line (currently disabled)
	{
		"akinsho/bufferline.nvim",
		enabled = false,
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					diagnostics = "nvim_lsp",
					show_buffer_close_icons = true,
					show_close_icon = false,
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							text_align = "left",
							separator = true,
						},
					},
				},
			})
			vim.keymap.set("n", "<Tab>", ":BufferlineCycleNext<CR>")
			vim.keymap.set("n", "<S-Tab>", ":BufferlineCyclePrev<CR>")
		end,
	},
}
