-- Short plugins settings 
-- Long are in separate folders plugin-name/init.lia
--
-- Black
vim.cmd([[
  let g:black_linelength = 120
]])


--vim.cmd([[runtime settings-autocomple.vim]])
--vim.cmd([[runtime settings-lsp.vim]])
--vim.cmd([[runtime settings-nvim-cmp.vim]])

-- https://github.com/justinmk/vim-sneak
vim.cmd([[
  map f <Plug>Sneak_s
  map F <Plug>Sneak_S
  let g:sneak#label = 1
  ]])

