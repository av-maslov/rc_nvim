require('plugins')
require('keymappings')
require('nvim-cmp')

-- Is it ON by default in neovim?
vim.cmd([[
  set nocompatible
  filetype plugin indent on
  set noswapfile
  syntax on
  syntax enable
  set encoding=utf-8
]])

vim.o.wrap = true 
vim.o.linebreak=true
vim.o.relativenumber=true
vim.o.number=true

local set = vim.opt
--set.cursorline = true

-- Set the behavior of tab
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

--vim.wo.colorcolumn = '80'

-- Permanent undo: u - undo, Ctrl r - redo
vim.cmd([[
  set undodir=~/.vimdid
  set undofile
]])

-- Show those damn hidden characters
vim.cmd([[
  set listchars=nbsp:¬,extends:»,precedes:«,trail:•
]])

vim.cmd([[
  hi CursorLine term=bold cterm=bold guibg=Grey40
  au Filetype tex set spell
  set mouse=a " Enable mouse usage (all modes) in terminals
  set autochdir
  set autoread
  set vb t_vb= " No more beeps
  set diffopt+=iwhite " No whitespace in vimdiff
  " Make diffing better: https://vimways.org/2018/the-power-of-diff/
  set diffopt+=algorithm:patience
  set diffopt+=indent-heuristic
]])

-- Gui settings
vim.cmd([[
  set guioptions-=T " Remove toolbar
  set backspace=2 " Backspace over newlines
  set nofoldenable
  set ttyfast
  set lazyredraw
  set synmaxcol=500
  set laststatus=2
  set showcmd " Show (partial) command in status line.
  set shortmess+=c " don't give |ins-completion-menu| messages.
]])

-- Colors
-- F8 - Next random color scheme
-- vim.cmd([[
--   "colorscheme base16-gruvbox-dark-hard " Good for programming, used in Rust videos 
--   "colorscheme base16-helios " Very pleasant for TeX: pink + green (izumrude) + light orange
--   "colorscheme Monokai
--   "colorscheme h80
-- ]])
--
-- vim.cmd[[colorscheme borland]]
-- vim.cmd[[coloscheme base16-gruvbox-dark-hard ]]
-- vim.cmd[[coloscheme base16-helios]]
-- vim.cmd[[coloscheme Monokai]]
-- vim.cmd[[coloscheme h80]]

---[[
vim.g.vscode_style = "dark"
vim.g.vscode_transparent = 0
vim.g.vscode_italic_comment = 1
vim.cmd[[colorscheme vscode]]
--]]
--vim.cmd[[colorscheme welpe]]
--vim.cmd[[colorscheme gruvbox]]

vim.cmd([[
  let g:black_linelength = 120
]])

-- Important have it at the end.
-- https://neovim.io/doc/user/provider.html
vim.cmd([[
  let g:python3_host_prog = '/home/al/.pyenv/shims/python3'
]])
