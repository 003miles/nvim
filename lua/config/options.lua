local options = {
	laststatus = 3,
	showmode = false, -- not needed, lualine does this
	showcmd = false,
	wrap = false, -- toggle bound to leader W
	mouse = "a", -- enable mouse
	clipboard = "unnamedplus", -- system clipboard integration
	history = 100, -- command line history (no. lines remembered)
	swapfile = false, -- swapfile gets in the way, apparently
	backup = false,
	undofile = true, -- undos are saved to file
	cursorline = true, -- highlight line
	ttyfast = true, -- faster scrolling
	smoothscroll = true,
	title = true, -- automatic window titlebar

	number = true, -- line numbers
	relativenumber = true, -- toggle bound to nn
	numberwidth = 4,
    scrolloff = 8,

	smarttab = true, -- indent stuff
	cindent = true,
	autoindent = false,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,

    foldmethod = "expr",
    foldlevel = 99,
    foldexpr = "nvim_treesitter#foldexpr()",

    termguicolors = true,

    ignorecase = true, -- ignore case when searching
    smartcase = true, -- but do not ignore if caps are used

    splitkeep = 'screen', -- stabilise window open/close

}

for k, v in pairs(options) do
	vim.opt[k] = v
end
