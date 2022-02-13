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

--vim.cmd[[colorscheme gruvbox]]
--vim.cmd[[colorscheme base16-default-dark]]
--vim.cmd[[colorscheme base16-dracula]]
--vim.cmd[[colorscheme base16-monokai]]
--vim.cmd[[colorscheme base16-onedark]]
--
--vim.cmd[[colorscheme default]]
--vim.cmd[[colorscheme darkblue]]
--vim.cmd[[colorscheme torte]]

-- Colorschemes with Treesitter support
vim.cmd[[colorscheme sonokai]]
--vim.cmd[[colorscheme tokyonight]] 

-- https://vim.fandom.com/wiki/Highlight_current_line
-- https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
vim.cmd([[
  " guifg - text color 
  "hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
  "hi CursorLine cterm=NONE term=bold guibg=Grey20 guifg=white
  hi CursorLine cterm=NONE term=bold guibg=Grey19
  ]])
