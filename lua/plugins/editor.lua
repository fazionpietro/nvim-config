-- Editor enhancement plugins
return {
	-- Auto pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({
				check_ts = true,
				ts_config = {
					lua = { "string" },
					javascript = { "template_string" },
				},
			})
		end,
	},

	-- Surround
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	-- Buffer delete
	{ "famiu/bufdelete.nvim" },

	-- Harpoon file navigation
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			-- Add current file
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)

			-- Open menu
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			-- Menu with Alt+h
			vim.keymap.set("n", "<M-h>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			-- Files 1-4 with Alt+number
			vim.keymap.set("n", "<M-1>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<M-2>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<M-3>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<M-4>", function()
				harpoon:list():select(4)
			end)
			vim.keymap.set("n", "<Tab>", function()
				harpoon:list():next()
			end, { desc = "Harpoon next" })

			vim.keymap.set("n", "<S-Tab>", function()
				harpoon:list():prev()
			end, { desc = "Harpoon prev" })
			vim.keymap.set("n", "<C-n>", function()
				harpoon:list():next()
			end, { desc = "Harpoon next" })

			vim.keymap.set("n", "<C-p>", function()
				harpoon:list():prev()
			end, { desc = "Harpoon prev" })
		end,
	},

	-- AI coding assistant (99)
	{
		"ThePrimeagen/99",
		config = function()
			local _99 = require("99")
			local cwd = vim.uv.cwd()
			local basename = vim.fs.basename(cwd)
			_99.setup({
				provider = _99.OpenCodeProvider,
				model = "opencode/kimi-k2.5-free",
				logger = {
					level = _99.DEBUG,
					path = "/tmp/" .. basename .. ".99.debug",
					print_on_error = true,
				},
				md_files = {
					"AGENT.md",
				},
			})
			vim.keymap.set("v", "<leader>9v", function()
				_99.visual()
			end)
			vim.keymap.set("v", "<leader>9s", function()
				_99.stop_all_requests()
			end)
		end,
	},
}
