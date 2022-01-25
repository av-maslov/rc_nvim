" ================== Essential/minimal  ================== "
" Essential settings 
" vim -u essential.vim
" Run :checkhealth
" =============================================== "
set nocompatible
filetype plugin indent on
syntax on
syntax enable
set encoding=utf-8
set wrap
set linebreak
set relativenumber
set noswapfile
set number
"set cursorline
au Filetype tex set spell
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=a " Enable mouse usage (all modes) in terminals
set autochdir
set autoread
set vb t_vb= " No more beeps
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

" nnoremap
let mapleader = "\<Space>"
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Save file in edit mode
inoremap <c-s> <Esc>:update<CR>
nnoremap <c-s> <Esc>:update<CR>
" Save file in normal mode
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
" Buffers navigation page 85, tip 37
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Switch buffers
nnoremap <leader><leader> <c-^>
nnoremap <c-t> <c-^>
" Ctrl+j and Ctrl+k as Esc
" Ctrl-j is a little awkward unfortunately:
" https://github.com/neovim/neovim/issues/5916
" So we also map Ctrl+k
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
snoremap <C-j> <Esc>
xnoremap <C-j> <Esc>
cnoremap <C-j> <C-c>
onoremap <C-j> <Esc>
lnoremap <C-j> <Esc>
tnoremap <C-j> <Esc>

nnoremap <C-k> <Esc>
inoremap <C-k> <Esc>
vnoremap <C-k> <Esc>
snoremap <C-k> <Esc>
xnoremap <C-k> <Esc>
cnoremap <C-k> <C-c>
onoremap <C-k> <Esc>
lnoremap <C-k> <Esc>
tnoremap <C-k> <Esc>

inoremap jk <esc>

" Run :Black 
autocmd FileType python nnoremap <leader>b :Black<CR> 
autocmd FileType rust nnoremap <leader>b :RustFmt<CR> 
noremap <F5> :make<CR>
noremap <F6> :make<BAR>copen<CR>
" Or, run on save
" autocmd BufWritePre *.py execute ':Black'

" https://vim.fandom.com/wiki/Search_for_current_word_in_multiple_files
nnoremap gr :grep -Ii <cword> %:p:h/*<CR>
nnoremap Gr :grep <cword> %:p:h/*<CR>
nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>


" autocmd to run scripts
" :!python % - send all lines from buffer to python
autocmd FileType python nnoremap <buffer> <leader>5 :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd FileType cpp nnoremap <buffer> <leader>5 :w<CR>:make<CR>
" https://stackoverflow.com/questions/540721/compile-directly-from-vim
autocmd filetype cpp nnoremap <buffer> <leader>4 :!g++ % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap <buffer> <leader>5 :!g++ % -ggdb -o %:r && ./%:r <CR>
autocmd filetype rust nnoremap <buffer> <leader>5 :!cargo run<CR>

"ctags p.257, tip 103 
nnoremap <leader>t :!ctags -R --languages=python --python-kinds=-i --exclude=.git --exclude=venv<CR>
set tags=tags

" Permanent undo: u - undo, Ctrl r - redo
set undodir=~/.vimdid
set undofile

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" Install vim-plug: https://github.com/junegunn/vim-plug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" Gui settings
set guioptions-=T " Remove toolbar
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set laststatus=2
set showcmd " Show (partial) command in status line.
set shortmess+=c " don't give |ins-completion-menu| messages.

let s:plug_dir = expand('~/.config/nvim/plugged')
" Add Telescope, FZF, Rg
call plug#begin(s:plug_dir)
  " :PlugInstall
  " Put plug.vim into autoload folder
  " https://github.com/junegunn/vim-plug
  " sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

   " Telescope
   Plug 'nvim-lua/popup.nvim'
   Plug 'nvim-lua/plenary.nvim'
   Plug 'nvim-telescope/telescope.nvim' 

  " Fuzzy search
   Plug 'airblade/vim-rooter'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'

   " Colors
   "
   " Switch color schemes:
   " https://github.com/xolox/vim-colorscheme-switcher
   Plug 'flazz/vim-colorschemes'
   Plug 'xolox/vim-misc'
   Plug 'xolox/vim-colorscheme-switcher' " Press F8 to switch color theme!

   Plug 'reyemxela/base16-helios-scheme'
   Plug 'morhetz/gruvbox'
   Plug 'reyemxela/base16-helios-scheme'
   Plug 'chriskempson/base16-vim'
   Plug 'nanotech/jellybeans.vim'

  " Autocompletion
  " https://github.com/hrsh7th/nvim-cmp
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  " For vsnip users.
  "Plug 'hrsh7th/cmp-vsnip'
  "Plug 'hrsh7th/vim-vsnip'
  " For luasnip users.
  " Plug 'L3MON4D3/LuaSnip'
  " Plug 'saadparwaiz1/cmp_luasnip'
  " For ultisnips users.
  " Plug 'SirVer/ultisnips'
  " Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  " For snippy users.
  " Plug 'dcampos/nvim-snippy'
  " Plug 'dcampos/cmp-snippy'
call plug#end()

" Colors
" F8 - Next random color scheme
"colorscheme base16-gruvbox-dark-hard " Good for programming, used in Rust videos 
" colorscheme base16-helios " Very pleasant for TeX: pink + green (izumrude) + light orange
"colorscheme gruvbox
colorscheme h80
"colorscheme jellybeans


" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" FZF
map <leader>f :GFiles<CR>
map <leader>F :Locate /<CR>
nmap <leader>, :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>L :BLines<CR>

" :Rg! - show result on the whole screen
noremap <leader>r :Rg<CR>
" Yank word under cursor and rg search for it
nnoremap <leader>s "zyiw:exe ":Rg ".@z.""<CR>

runtime autocomple.vim
runtime lsp.vim
