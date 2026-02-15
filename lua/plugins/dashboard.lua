return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- 1. Header (Il logo ASCII)
		dashboard.section.header.val = {
			[[                               __                ]],
			[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
			[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			[[/\ \/\ \/\  __///\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			[[\ \_\ \_\ \____\\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[ \/_/\/_/\/____/ \/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}

		-- 2. Menu (I tasti rapidi)
		dashboard.section.buttons.val = {
			dashboard.button("n", "  Nuovo file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰈞  Trova file", ":Telescope find_files<CR>"),
			dashboard.button("r", "󰄉  File recenti", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "󰭎  Cerca testo", ":Telescope live_grep<CR>"),
			dashboard.button("c", "  Configurazione", ":e $MYVIMRC <CR>"),
			dashboard.button("q", "󰅚  Esci", ":qa<CR>"),
		}

		-- 3. Footer (Un tocco di classe: conta i plugin caricati)
		local stats = require("lazy").stats()
		dashboard.section.footer.val = "⚡ Caricati " .. stats.count .. " plugin"

		alpha.setup(dashboard.opts)
	end,
}
