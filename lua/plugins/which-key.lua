local wk = require("which-key")
wk.add({
	{ "<leader>e", desc = "toggle file tree" },

	{ "<leader>f", desc = "fzf" },
	{ "<leader>F", desc = "fzf opts" },
	{ "<leader>Fh", desc = "search home" },
	{ "<leader>Fc", desc = "search .config" },
	{ "<leader>Ff", desc = "search parent dir" },
	{ "<leader>Fr", desc = "resume last search" },

	{ "<leader>h", desc = "nav to left win" },
	{ "<leader>j", desc = "nav to win below" },
	{ "<leader>k", desc = "nav to win above" },
	{ "<leader>l", desc = "nav to right win" },

	{ "<leader>H", desc = "move buf to left" },
	{ "<leader>L", desc = "move buf to right" },

	{ "<leader>q", desc = "close buf" },
	{ "<leader>Q", desc = "close buf!" },

	{ "<leader>R", desc = "reload nvim config" },
	{ "<leader>w", desc = "write file" },
	{ "<leader>d", desc = "dup file w/ new name" },
	{ "<leader>W", desc = "toggle wrap" },
	{ "<leader>P", desc = "install plugins" },
	{ "<leader>nn", desc = "toggle relative line numbers" },
	{ "<leader>`", desc = "open terminal" },

})
