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

-- https://github.com/jiangmiao/auto-pairs
vim.cmd([[
  "let g:AutoPairs = {'(':')', '[':']', '{':'}', '"""':'"""'}
  " let g:AutoPairs = Default: {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
  " When the filetype is FILETYPE then make AutoPairs only match for parenthesis
  " au Filetype python let b:AutoPairs = {"(": ")"}
  au FileType php    let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
]])

-- Scala metals
-- from :help nvim-metals
vim.cmd([[
  augroup lsp
  au!
  au FileType java,scala,sbt lua require("metals").initialize_or_attach({})
  augroup end
]])
vim.opt_global.shortmess:remove("F")

metals_config = require("metals").bare_config()
metals_config.init_options.statusBarProvider = "on"


