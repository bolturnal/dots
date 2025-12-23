-- ================================================ --
-- NEOVIM config for coding and writing in peace!!! --
-- ================================================ --

vim.g.mapleader = " " -- BEHOLD YOUR LEADER FROM SPACE... SORRY? OH YOU AREN'T FROM SPACE... YOUR NAME IS SPACE. SORRY!!!

-- LOAD PLUGIN MANAGER (LAZY NVIM)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- configs
require("config.opts")
require("config.maps")

-- plugins
require("lazy").setup("plugins")
