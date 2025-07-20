-- mappings
-- map(mode, key, vim_command)
local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true })
end

-- silentmap(mode, key, vim_command)
local function silentmap(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- buffers
silentmap("n", "<S-h>", ":BufferPrevious<CR>")
silentmap("n", "<S-l>", ":BufferNext<CR>")
silentmap("n", "<leader>q", ":BufferClose<CR>")
silentmap("n", "<leader>Q", ":BufferClose!<CR>")

-- buffer position reorder
silentmap("n", "<leader>H", "<Cmd>BufferMovePrevious<CR>")
silentmap("n", "<leader>L", "<Cmd>BufferMoveNext<CR>")

-- window navigation
silentmap("n", "<leader>h", "<C-w>h")
silentmap("n", "<leader>j", "<C-w>j")
silentmap("n", "<leader>k", "<C-w>k")
silentmap("n", "<leader>l", "<C-w>l")

-- fzf
silentmap("n", "<leader>f", ":lua require('fzf-lua').files()<CR>") -- search cwd
silentmap("n", "<leader>Fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") -- search home
silentmap("n", "<leader>Fc", ":lua require('fzf-lua').files({ cwd = '~/.config' })<CR>") -- search .config
silentmap("n", "<leader>Ff", ":lua require('fzf-lua').files({ cwd = '..' })<CR>") -- search parent dir
silentmap("n", "<leader>Fr", ":lua require('fzf-lua').resume()<CR>") -- last search

-- misc
map("n", ";", ":")
map("n", "<leader>w", ":w<CR>") -- save file
map("n", "<leader>d", ":w ") -- duplicate file with new name
map("n", "<leader>P", ":PlugInstall<CR>") -- vim-plug
map("n", "<leader>R", ":so % | echo '* Config reloaded! *'<CR>") -- reload config
silentmap("n", "<leader>e", ":NvimTreeToggle<CR>") -- open nvim tree
silentmap("n", "<leader>W", ":set wrap!<CR>") -- toggle wrap
silentmap("n", "<leader>z", ":lua require('FTerm').open()<CR>") -- open terminal
silentmap("t", "<Esc>", "<C-\\><C-n><CMD>lua require('FTerm').close()<CR>") -- close terminal
silentmap("n", "<leader>t", ":Twilight<CR>") -- toggle focus mode

-- map("n", "<leader>nn", function() -- toggle relative vs absolut line numbers
-- 	if vim.wo.relativenumber then
-- 		vim.wo.relativenumber = false
-- 		vim.wo.number = true
-- 	else
-- 		vim.wo.relativenumber = true
-- 	end
-- end)

silentmap("n", "<leader>B", function() -- toggle btop in term (use q to quit)
    _G.btop:toggle()
end)

