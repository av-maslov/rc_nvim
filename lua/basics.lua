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
vim.o.cursorline = false

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

-- https://vim.fandom.com/wiki/Highlight_current_line
vim.cmd([[
  " hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
  " hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
  hi CursorLine term=bold cterm=bold guibg=Grey40
  
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

