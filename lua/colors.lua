-- Colors
-- http://chriskempson.com/projects/base16/
-- F8 - Next random color scheme
-- vim.cmd([[
--   "colorscheme base16-gruvbox-dark-hard " Good for programming, used in Rust videos 
--   "colorscheme base16-helios " Very pleasant for TeX: pink + green (izumrude) + light orange
--   "colorscheme h80
-- ]])
--
-- vim.cmd[[colorscheme borland]]
-- vim.cmd[[coloscheme base16-gruvbox-dark-hard ]]
-- vim.cmd[[coloscheme base16-helios]]
-- vim.cmd[[coloscheme Monokai]]
-- vim.cmd[[coloscheme h80]]

vim.cmd([[
  if !has('gui_running')
    set t_Co=256
  endif
  if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
    " screen does not (yet) support truecolor
    set termguicolors
  endif
  set background=dark
  let base16colorspace=256
  let g:base16_shell_path="~/dev/others/base16/templates/shell/scripts/"
  hi Normal ctermbg=NONE
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
vim.cmd[[colorscheme gruvbox]]

