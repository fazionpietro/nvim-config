-- UI themes and statusline
return {
	-- Primary theme: Black Metal
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			local alt_bg_state = false
			local function apply_theme(alt_bg)
				-- Remove module and submodules from cache
				for name, _ in pairs(package.loaded) do
					if name:match("^black%-metal") then
						package.loaded[name] = nil
					end
				end
				-- Reload and apply theme
				local bm = require("black-metal")
				bm.setup({
					alt_bg = alt_bg,
					theme = "impaled-nazarene",
					transparent_background = false,
				})
				bm.load()

				-- Reapply customizations after theme loads
				vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#060606", bg = "#000000" })
				vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#060606", bg = "#000000" })
			end
			-- Initial setup
			apply_theme(alt_bg_state)
			-- Toggle command
			vim.api.nvim_create_user_command("BlackMetalToggleBg", function()
				alt_bg_state = not alt_bg_state
				apply_theme(alt_bg_state)
				print("black-metal alt_bg: " .. tostring(alt_bg_state))
			end, { desc = "Toggle black-metal alt_bg" })
		end,
	},

	-- Icons
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					section_separators = { left = "", right = "" },
					component_separators = { left = "|", right = "|" },
					globalstatus = true,
				},
				sections = {
					lualine_a = { { "mode", gui = "bold" } },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = {
						{ "filename", path = 1 },
						{
							function()
								return require("nvim-navic").get_location()
							end,
							cond = function()
								return require("nvim-navic").is_available()
							end,
						},
					},
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},

	-- Alternative themes (lazy loaded)
	{ "datsfilipe/vesper.nvim", lazy = true },
	{
		"oskarnurm/koda.nvim",
		lazy = true,
		config = function()
			vim.cmd("colorscheme koda")
		end,
	},
	{
		"everviolet/nvim",
		lazy = true,
		name = "evergarden",
		opts = {
			theme = {
				variant = "fall",
				accent = "green",
			},
			editor = {
				transparent_background = false,
				sign = { color = "none" },
				float = {
					color = "mantle",
					solid_border = false,
				},
				completion = {
					color = "surface0",
				},
			},
		},
	},
	{
		"slugbyte/lackluster.nvim",
		lazy = true,
		init = function()
			vim.cmd.colorscheme("lackluster")
		end,
	},
	{ "projekt0n/github-nvim-theme", name = "github-theme", lazy = true },
}
