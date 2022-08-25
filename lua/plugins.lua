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

	-- Packer
	use "wbthomason/packer.nvim"  		-- Have packer manage itself

	-- Essentials
	use "nvim-lua/popup.nvim" 			-- An implementation of the popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" 		-- Useful lua function used by lots of plugins
	use "windwp/nvim-autopairs"			-- Provides bracket autopairing
	use "kyazdani42/nvim-web-devicons"	-- Neovim Icons
	use "kyazdani42/nvim-tree.lua"		-- Neovim file explorer
	use "nvim-lualine/lualine.nvim"		-- Status line for neovim
	use "akinsho/bufferline.nvim"		-- Buffers for neovim
	use "akinsho/toggleterm.nvim"		-- External terminal

	-- Indentation
	use "lukas-reineke/indent-blankline.nvim"

	-- Cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"

	-- Snippets
	use "L3MON4D3/LuaSnip" -- Snippet engine
	use "rafamadriz/friendly-snippets" -- A bunch of snippets to use

	-- LSP
	use "neovim/nvim-lspconfig"   -- Enable LSP

	-- Treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }

	-- Telescope
	use "nvim-telescope/telescope.nvim"
	use 'nvim-telescope/telescope-media-files.nvim'

	-- Colorschemes
	use "lunarvim/colorschemes"  		-- Colorscheme collection from chrisatmachine
	use "franbach/miramare"
	use "sainnhe/gruvbox-material"
	use "ayu-theme/ayu-vim"
	use "morhetz/gruvbox"
    use "wesgibbs/vim-irblack"
    use "marko-cerovac/material.nvim"
	use "techtuner/aura-neovim"
	use "ghifarit53/tokyonight-vim"
	use "aonemd/kuroi.vim"
	use "rebelot/kanagawa.nvim"
	use "RRethy/nvim-base16"

end)

