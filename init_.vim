" ================== Essential/minimal  ================== "
" Essential settings 
" vim -u essential.vim
" Run :checkhealth
" =============================================== "
"
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
" Cursorline 
set cursorline
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
set colorcolumn=80 " and give me a colored column

" Porting lua
"
" Done:
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"
" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" lua << EOF
" vim.cmd([[
"   set nocompatible
"   filetype plugin indent on
"   set noswapfile
"   syntax on
"   syntax enable
"   set encoding=utf-8
" ]])
" 
" vim.o.wrap = true 
" vim.o.linebreak=true
" vim.o.relativenumber=true
" vim.o.number=true
" 
" local set = vim.opt
" set.cursorline = true
" vim.cmd([[
"   hi CursorLine term=bold cterm=bold guibg=Grey40
"   au Filetype tex set spell
"   set mouse=a " Enable mouse usage (all modes) in terminals
"   set autochdir
"   set autoread
"   set vb t_vb= " No more beeps
"   set diffopt+=iwhite " No whitespace in vimdiff
"   " Make diffing better: https://vimways.org/2018/the-power-of-diff/
"   set diffopt+=algorithm:patience
"   set diffopt+=indent-heuristic
" ]])
" -- Set the behavior of tab
" set.expandtab = true
" set.tabstop = 2
" set.softtabstop = 2
" set.shiftwidth = 2
" 
" vim.wo.colorcolumn = '80'
" 
" -- use space as a the leader key
" vim.g.mapleader = ' '
" local keymap = vim.api.nvim_set_keymap
" local opts = { noremap = true, silent = true }
" keymap("n", "<C-Up>", ":resize -2<CR>", opts)
" keymap("n", "<C-Down>", ":resize +2<CR>", opts)
" keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
" keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
" 
" -- No arrow keys --- force yourself to use the home row
" keymap("n", "<Up>", '', opts)
" keymap("n", "<Down>", '', opts)
" 
" keymap("i", "<Up>", "", opts)
" keymap("i", "<Down>", "", opts)
" keymap("i", "<Left>", "", opts)
" keymap("i", "<Right>", "", opts)
" 
" --Left and right can switch buffers
" keymap("n", "<Left>", ":bp<CR>", opts)
" keymap("n", "<Right>", ":bn<CR>", opts)
" 
" keymap("n", "<C-l>", ":nohl<CR>", opts)
" 
" keymap("n", "<C-s>", "<Esc>:update<CR>", opts)
" keymap("i", "<C-s>", "<Esc>:update<CR>", opts)
" keymap("n", "<Leader>w", ":w<CR>", opts)
" keymap("n", "<Leader>q", ":q<CR>", opts)
" keymap("n", "<Leader>e", ":Lexplore<CR>", opts)
" vim.cmd([[
"   " Permanent undo: u - undo, Ctrl r - redo
"   set undodir=~/.vimdid
"   set undofile
"   " Show those damn hidden characters
"   " Verbose: set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•
"   set listchars=nbsp:¬,extends:»,precedes:«,trail:•
" ]])

" -- Switch buffers
" --keymap("n", "<Leader>-<Leader>", "c-^", opts)
" --keymap("n", "<C-t>", "c-^", opts)
" vim.cmd([[
"   "Switch buffers
"   nnoremap <leader><leader> <c-^>
"   nnoremap <c-t> <c-^>
" ]])
" EOF

" lua require('lua/keybindings')
"lua require('lua/lua-ls')

" nnoremap
let mapleader = "\<Space>"
nnoremap <silent> <C-l> :nohl<CR> "<C-l>
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

inoremap jk <esc> " Very convenient

" Split panes keys
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" Switch split panes 
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR> " Overwrites nohl 
nnoremap <silent> <leader>t <C-w>w<CR> " Cycle through spli panes 

" Exit insert mode in the Terminal mode 
"tnoremap <Esc> <C-\><C-n> "Disables exit from :Rg window
tnoremap jk <C-\><C-n>
"tnoremap <C-C> <C-\><C-n><C-w>w
" tnoremap <C-w>j <C-\><C-n><C-w>j

" From :help
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


" Very magic by default
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" Open new file adjacent to current file
nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>

" Move by line
nnoremap j gj
nnoremap k gk

" Help filetype detection
autocmd BufRead *.plot set filetype=gnuplot
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.lds set filetype=ld
autocmd BufRead *.tex set filetype=tex
autocmd BufRead *.trm set filetype=c
autocmd BufRead *.xlsx.axlsx set filetype=ruby

" Run :Black 
autocmd FileType python nnoremap <leader>b :Black<CR> 
autocmd FileType rust nnoremap <leader>b :RustFmt<CR> 
" Or, run on save
" autocmd BufWritePre *.py execute ':Black'

" https://vim.fandom.com/wiki/Search_for_current_word_in_multiple_files
nnoremap gr :grep -Ii <cword> %:p:h/*<CR>
nnoremap Gr :grep <cword> %:p:h/*<CR>
nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>




" autocmd to run scripts
" :!python % - send all lines from buffer to python
autocmd FileType python nnoremap <buffer> <leader>5 :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" autocmd FileType cpp nnoremap <buffer> <leader>5 :w<CR>:make<CR>
" https://stackoverflow.com/questions/540721/compile-directly-from-vim
autocmd filetype cpp nnoremap <buffer> <leader>4 :!g++ -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap <buffer> <leader>5 :!g++ -std=c++17 -Wextra -Wshadow -DONPC -O2 % -ggdb -o %:r && ./%:r <CR>
" From: https://youtu.be/a2DD36WHpAY
autocmd filetype cpp noremap <F5> <ESC> :w <CR> :!g++ -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
autocmd filetype cpp inoremap <F5> <ESC> :w <CR> :!g++ -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
" noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
" inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
" autocmd filetype cpp noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
" autocmd filetype cpp inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
autocmd filetype rust nnoremap <buffer> <leader>5 :!cargo run<CR>

noremap <F6> :make<CR>
noremap <F7> :make<BAR>copen<CR>

"ctags p.257, tip 103 
nnoremap <leader>c :!ctags -R --languages=python --python-kinds=-i --exclude=.git --exclude=venv<CR>
set tags=tags

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


lua require('plugins')

" del, it is in the end let g:python3_host_prog = '/usr/local/bin/python3'
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

   Plug 'rbgrouleff/bclose.vim'
   Plug 'francoiscabrol/ranger.vim' " If you use neovim, you have to add the dependency to the plugin bclose.vim

   Plug 'jiangmiao/auto-pairs'

   " Snippets
   " :UltiSnipsEdit
   " :Snippets - explore snippets
   " Ctrl j Jump to next 
   Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

   " Git
   Plug 'tpope/vim-fugitive'
   " Keys: [c , ]c to jump between changes
   Plug 'airblade/vim-gitgutter'
   " Show diffs
   Plug 'mhinz/vim-signify'
   " Browse commits :GV, :GV!
   Plug 'junegunn/gv.vim'


   " Colors
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

   " LSP 
   "packer:Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
   " Autocompletion
   " https://github.com/hrsh7th/nvim-cmp
   Plug 'neovim/nvim-lspconfig'
   Plug 'hrsh7th/cmp-nvim-lsp'
   Plug 'hrsh7th/cmp-buffer'
   Plug 'hrsh7th/cmp-path'
   Plug 'hrsh7th/cmp-cmdline'
   Plug 'hrsh7th/nvim-cmp'

   Plug 'google/vim-searchindex'
   "Plug 'vim-airline/vim-airline'
   " Instead of airline:
   Plug 'itchyny/lightline.vim'
   Plug 'sheerun/vim-polyglot'

   Plug 'psf/black', { 'branch': 'stable' }
  
   " Coc - Clashes with Ultisnips
   " Use release branch (recommend)
   "P lug 'neoclide/coc.nvim', {'branch': 'release'}   
call plug#end()

let g:black_linelength = 120

" Colors
" F8 - Next random color scheme
"colorscheme base16-gruvbox-dark-hard " Good for programming, used in Rust videos 
" colorscheme base16-helios " Very pleasant for TeX: pink + green (izumrude) + light orange
"colorscheme Monokai
" colorscheme h80
"colorscheme jellybeans
colorscheme gruvbox


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
let g:fzf_layout = {'down': '~30%'}

" :Rg! - show result on the whole screen
noremap <leader>g :Rg<CR>
" Yank word under cursor and rg search for it
nnoremap <leader>s "zyiw:exe ":Rg ".@z.""<CR>

" Ranger
let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>

runtime settings-autocomple.vim
runtime settings-lsp.vim
runtime settings-nvim-cmp.vim
runtime settings-lightline.vim
runtime settings-ultisnips.vim
" runtime settings-lsp-coc.vim - Clashes with UltiSnips

" Important: have it at the end.
"https://neovim.io/doc/user/provider.html
"let g:python_host_prog = '/home/al/.pyenv/shims/python'
let g:python3_host_prog = '/home/al/.pyenv/shims/python3'

