-- Plugin manager setup and loader
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Load all plugin modules
require("lazy").setup({
	-- VimTeX for LaTeX support
	require("plugins.vimtex"),

	-- Core functionality
	{ import = "plugins.completion" },
	{ import = "plugins.lsp" },
	{ import = "plugins.formatting" },
	{ import = "plugins.treesitter" },

	-- UI and navigation
	{ import = "plugins.ui" },
	{ import = "plugins.explorer" },

	-- Editor enhancements
	{ import = "plugins.editor" },
	{ import = "plugins.aerial" },
	{ import = "plugins.telescope" },
	{ import = "plugins.nvim-navic" },
	{ import = "plugins.dashboard" },
	{ import = "plugins.git" },
	{ import = "plugins.terminal" },
	{ import = "plugins.which-key" },
})
