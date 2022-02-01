-- use space as a the leader key
vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- No arrow keys --- force yourself to use the home row
keymap("n", "<Up>", '', opts)
keymap("n", "<Down>", '', opts)
keymap("i", "<Up>", "", opts)
keymap("i", "<Down>", "", opts)
keymap("i", "<Left>", "", opts)
keymap("i", "<Right>", "", opts)

--Left and right can switch buffers
keymap("n", "<Left>", ":bp<CR>", opts)
keymap("n", "<Right>", ":bn<CR>", opts)

keymap("n", "<C-l>", ":nohl<CR>", opts)

keymap("n", "<C-s>", "<Esc>:update<CR>", opts)
keymap("i", "<C-s>", "<Esc>:update<CR>", opts)
keymap("n", "<Leader>w", ":w<CR>", opts)
keymap("n", "<Leader>q", ":q<CR>", opts)
keymap("n", "<Leader>e", ":Lexplore<CR>", opts)

--inoremap jk <esc> " Very convenient
keymap("i", "jk", "<Esc>", opts)

-- Switch buffers
--keymap("n", "<Leader>-<Leader>", "c-^", opts)
--keymap("n", "<C-t>", "c-^", opts)
vim.cmd([[
  nnoremap <leader><leader> <c-^>
  nnoremap <c-t> <c-^>
]])


vim.cmd([[
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
]])


-- Run :Black 
vim.cmd([[
  autocmd FileType python nnoremap <leader>b :Black<CR> 
  autocmd FileType rust nnoremap <leader>b :RustFmt<CR> 
]])

-- https://vim.fandom.com/wiki/Search_for_current_word_in_multiple_files
vim.cmd([[
  nnoremap gr :grep -Ii <cword> %:p:h/*<CR>
  nnoremap Gr :grep <cword> %:p:h/*<CR>
  nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>
]])

vim.cmd([[
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
]])



vim.cmd([[
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
]])


vim.cmd([[
  runtime settings-autocomple.vim
  runtime settings-lsp.vim
  runtime settings-nvim-cmp.vim
  runtime settings-lightline.vim
  runtime settings-ultisnips.vim
  " runtime settings-lsp-coc.vim - Clashes with UltiSnips
  
]])


