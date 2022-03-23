
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use '9mm/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- You can specify rocks in isolation
  use_rocks 'penlight'
  use_rocks {'lua-resty-http', 'lpeg'}

  -- Local plugins can be included
  --use '~/projects/personal/hover.nvim'

  -- useins can have post-install/update hooks
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Post-install/update hook with call of vimscript function with argument
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  --use {
  --  'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
  --  requires = {'kyazdani42/nvim-web-devicons'}
  --}

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- You can specify multiple plugins in a single call
  --use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- You can alias plugin names
  --use {'dracula/vim', as = 'dracula'}

   -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim' 

   -- Fuzzy search
   use 'airblade/vim-rooter'
   use {'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end}--, { 'do': { -> fzf#install() } }
   --use 'junegunn/fzf'--, { 'do': { -> fzf#install() } }
   use 'junegunn/fzf.vim'

   use 'rbgrouleff/bclose.vim'
   use 'francoiscabrol/ranger.vim' -- If you use neovim, you have to add the dependency to the plugin bclose.vim

   use 'jiangmiao/auto-pairs'

   -- Snippets
   -- :UltiSnipsEdit
   -- :Snippets - explore snippets
   -- Ctrl j Jump to next 
   use 'SirVer/ultisnips'  
   use 'honza/vim-snippets'

   -- Git
   use 'tpope/vim-fugitive'
   ---- Keys: [c , ]c to jump between changes
   use 'airblade/vim-gitgutter'
   ---- Show diffs
   use 'mhinz/vim-signify'
   ---- Browse commits :GV, :GV!
   use 'junegunn/gv.vim'

   -- Colors
   -- Switch color schemes:
   -- https://github.com/xolox/vim-colorscheme-switcher
   --use 'flazz/vim-colorschemes'
   --use 'xolox/vim-misc'
   --use 'xolox/vim-colorscheme-switcher' --Press F8 to switch color theme!

   use 'morhetz/gruvbox'
   use 'reyemxela/base16-helios-scheme'
   use 'chriskempson/base16-vim'
   use 'Mofiqul/vscode.nvim'
   use 'folke/tokyonight.nvim'
   use 'sainnhe/sonokai'

   -- LSP 
   --Autocompletion
   --https://github.com/hrsh7th/nvim-cmp
   use 'neovim/nvim-lspconfig'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'hrsh7th/nvim-cmp'

   use 'google/vim-searchindex'
   use 'itchyny/lightline.vim'
   use 'sheerun/vim-polyglot'

   use {'psf/black', branch = 'main'}

   use { 'justinmk/vim-sneak' }

   use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }


  use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  --use {
  --  'w0rp/ale',
  --  ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --  cmd = 'ALEEnable',
  --  config = 'vim.cmd[[ALEEnable]]'
  --}

  -- useins can have dependencies on other plugins
  --use {
  --  'haorenW1025/completion-nvim',
  --  opt = true,
  --  requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  --}

  -- useins can also depend on rocks from luarocks.org:
  --use {
  --  'my/supercoolplugin',
  --  rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  --}
end)


