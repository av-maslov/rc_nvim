-- :checkhealth
-- nvim --nopplugin
-- nvim --clean
--
--
--
-- 2022.02.09: Ultisnips completion works with TAB currentrly
--
--
require('basics')
require('keymappings')
require('plugins')
-- Plugins settings
require('nvim-cmp')
require('nvim-lspconfig')
require('treesitter')
require('ultisnips')
require('lightline')
-- Short plugins settings
require('short_plugins_settings')
require('colors')

-- Important have it at the end.
-- https://neovim.io/doc/user/provider.html
vim.cmd([[
  let g:python3_host_prog = '/home/al/.pyenv/shims/python3'
]])

print("ETC?")

-- https://github.com/hrsh7th/nvim-compe/issues/141
vim.cmd([[
  inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
]])
