require('basics')
require('keymappings')
require('colors')
require('plugins')
require('nvim-cmp')

-- Important have it at the end.
-- https://neovim.io/doc/user/provider.html
vim.cmd([[
  let g:python3_host_prog = '/home/al/.pyenv/shims/python3'
]])

print("ETC?")
