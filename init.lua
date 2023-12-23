

-- init for lazyvim. Checks if path is there. if not create and load

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--commands

-- Enable line numbers
vim.cmd('set number')

-- Enable relative line numbers
vim.cmd('set relativenumber')
vim.cmd('set clipboard+=unnamedplus')

-- set leader
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, {})
require("lazy").setup("plugins")


