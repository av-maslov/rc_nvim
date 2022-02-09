-- Colors
--
-- Base16 are nice
-- https://github.com/chriskempson/base16-shell
-- git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
--
-- http://chriskempson.com/projects/base16/

-- vim.cmd[[colorscheme borland]]
-- vim.cmd[[coloscheme base16-gruvbox-dark-hard ]]
-- vim.cmd[[coloscheme base16-helios]]
-- vim.cmd[[coloscheme Monokai]]
-- vim.cmd[[coloscheme h80]]

-- https://github.com/chriskempson/base16-vim
vim.cmd([[
  if !has('gui_running')
    set t_Co=256
  endif
  if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
    " screen does not (yet) support truecolor
    set termguicolors
  endif
  hi Normal ctermbg=NONE
  set background=dark
  let base16colorspace=256
  set termguicolors
]])

--[[
vim.g.vscode_style = "dark"
vim.g.vscode_transparent = 0
vim.g.vscode_italic_comment = 1
vim.cmd[[colorscheme vscode]]
--]]

--vim.cmd[[colorscheme welpe]]
--vim.cmd[[colorscheme warriors-away]]
--vim.cmd[[colorscheme default]]
--vim.cmd[[colorscheme gruvbox]]
--vim.cmd[[colorscheme base16-default-dark]]
vim.cmd[[colorscheme darkblue]]
