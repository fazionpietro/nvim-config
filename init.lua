-- Neovim initialization file
-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable built-in file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Terminal color settings
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.fillchars:append({ eob = " " })

-- Kitty terminal compatibility
if vim.env.TERM == "xterm-kitty" or vim.env.TERM == "xterm-256color" then
	vim.cmd([[let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"]])
	vim.cmd([[let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"]])
end

-- Load configuration modules
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Load plugin system
require("plugins")
