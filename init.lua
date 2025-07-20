vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- v Add Plugins Here v --

Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) -- colorscheme
Plug('nvim-lualine/lualine.nvim') -- statusline
Plug('nvim-tree/nvim-web-devicons') -- icons
Plug('goolord/alpha-nvim') -- startup screen
Plug('nvim-treesitter/nvim-treesitter') -- better syntax
Plug('windwp/nvim-autopairs') -- autopairs
Plug('mfussenegger/nvim-lint') -- basic linting
Plug('lewis6991/gitsigns.nvim') -- git
Plug('ibhagwan/fzf-lua') -- fuzzy file finder
Plug('romgrk/barbar.nvim') -- bufferline
Plug('folke/which-key.nvim') -- mappings popup
Plug('nvim-tree/nvim-tree.lua') -- file explorer
Plug('numToStr/FTerm.nvim') -- floating terminal
Plug('folke/twilight.nvim') -- focus mode
Plug('sitiom/nvim-numbertoggle') -- intelligent rel nu toggle

vim.call('plug#end')

-- Load colorscheme
-- Do this after plug#end
-- 'silent!' is to ignore errors when not installed
vim.cmd('silent! colorscheme catppuccin-frappe') -- latte doesn't color cursor correctly?

-- Moved config to separate files
require('config.autocmd')
require('config.mappings')
require('config.options')

require('plugins.which-key')
require('plugins.lualine')
require('plugins.alpha')
require('plugins.nvim-autopairs')
require('plugins.nvim-lint')
require('plugins.nvim-tree')
require('plugins.fterm')

