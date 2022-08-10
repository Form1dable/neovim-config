
-- General
vim.opt.relativenumber = true			-- enables relative numbers
vim.opt.clipboard = "unnamedplus"		-- allows neovim to access the system clipboard
vim.opt.cmdheight = 1				-- more space in the neovim commandline for displaying message
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0			-- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"			-- the encoding written to a file
vim.opt.hlsearch = true				-- highlight all matches on previous search pattern
vim.opt.ignorecase = true			-- ignore case in search patterns
vim.opt.mouse = "a"				-- allow the mouse to be used in neovim
vim.opt.pumheight = 10 				-- pop up menu height
vim.opt.showtabline = 2				-- always show tabs
vim.opt.smartindent = true			-- smart indenting
vim.opt.smartcase = true			-- smart case
vim.opt.splitbelow = true			-- force all horizontal splits to go below current window
vim.opt.splitright = true			-- force all vertical splits to go to the right of the current window
vim.opt.swapfile = false			-- creates a swapfile
vim.opt.termguicolors = true			-- set term gui colors (most terminal supports this)
vim.opt.timeoutlen = 1000			-- time to wait for a mapped sequence to complete
vim.opt.undofile = true				-- enable persistent undo
vim.opt.updatetime = 300			-- faster completion (4000ms default)
vim.opt.writebackup = false			-- if a file is edited by another program it is backed up
vim.opt.tabstop = 4				-- number of spaces inserted for each tab
vim.opt.shiftwidth = 2				-- insert 4 spaces for a tab
vim.opt.cursorline = true			-- ighlight the current line
vim.opt.numberwidth = 4				-- set set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"			-- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false				-- display lines as one long line
vim.opt.scrolloff = 8				-- sets scroll offset
vim.opt.sidescrolloff = 8			-- sets sidescroll offset
vim.opt.guifont = "monospace:h17"		-- the font used in graphical neovim application

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]


