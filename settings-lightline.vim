
" Lightline instead of airline 
" Lightline
"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'filename': 'LightlineFilename',
"      \ },
"      \ }

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ ['lineinfo'], 
      \              [ 'percent' ], 
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ] 
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }

function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction
