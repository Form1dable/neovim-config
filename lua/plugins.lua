local fn = vim.fn

-- Automaticall install packer if not installed
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	
	print "Installing packer! Close and reopen Neovim ... "
	vim.cmd [[packadd packer.nvim]]
end


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print "Error"
	return
end


-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}




-- Install plugins
return packer.startup(function(use)
	-- Plugins

	use "wbthomason/packer.nvim"  -- Have packer manage itself
	use "nvim-lua/popup.nvim" -- An implementation of the popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua function used by lots of plugins
	use "lunarvim/colorschemes"  -- colorscheme collection from chrisatmachine
end)
