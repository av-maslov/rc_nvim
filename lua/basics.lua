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
--vim.o.cursorline = true

vim.cmd[[set guicursor=a:blinkon100]]

-- local set = vim.opt

-- Set the behavior of tab
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- vim.o.colorcolumn = '80'

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

-- Help filetype detection
vim.cmd([[
  autocmd BufRead *.plot set filetype=gnuplot
  autocmd BufRead *.md set filetype=markdown
  autocmd BufRead *.lds set filetype=ld
  autocmd BufRead *.tex set filetype=tex
  autocmd BufRead *.trm set filetype=c
  autocmd BufRead *.xlsx.axlsx set filetype=ruby
]])
