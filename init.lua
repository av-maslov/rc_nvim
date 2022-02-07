require('basics')
require('keymappings')
require('plugins')
require('nvim-cmp')

vim.cmd([[
  let g:black_linelength = 120
]])

vim.cmd([[
  runtime settings-autocomple.vim
  runtime settings-lsp.vim
  runtime settings-nvim-cmp.vim
  runtime settings-lightline.vim
  runtime settings-ultisnips.vim
]])

-- Important have it at the end.
-- https://neovim.io/doc/user/provider.html
vim.cmd([[
  let g:python3_host_prog = '/home/al/.pyenv/shims/python3'
]])

print("ETC?")
