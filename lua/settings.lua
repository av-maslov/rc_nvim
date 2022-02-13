-- Plugins settings 
--
-- Black
vim.cmd([[
  let g:black_linelength = 120
]])

vim.cmd([[ runtime settings-lightline.vim ]])

-- UltiSnips
vim.cmd([[
  " Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
  " - https://github.com/Valloric/YouCompleteMe
  " - https://github.com/nvim-lua/completion-nvim
  let g:UltiSnipsExpandTrigger="<c-q>"
  let g:UltiSnipsJumpForwardTrigger="<c-j>"
  let g:UltiSnipsJumpBackwardTrigger="<c-k>"
  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
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

--  Treesitter
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
