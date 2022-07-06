if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'andymass/vim-matchup'

if has("nvim")

  " lsp
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'neovim/nvim-lspconfig'
  " Plug 'glepnir/lspsaga.nvim'
  " Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'glepnir/lspsaga.nvim', {'frozen': 1}

  " syntax highlight, indent, fold, autotag + vim-matchup integration
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-autopairs'
  " Plug 'windwp/nvim-ts-autotag' " autotag, use instead of let g:matchup_transmute_enabled = 1

  " completion setup
  Plug 'hrsh7th/nvim-cmp' " completion plugin 
  Plug 'onsails/lspkind-nvim' " icons

  Plug 'hrsh7th/cmp-nvim-lsp' " lsp source
  Plug 'hrsh7th/cmp-buffer' " buffer source
  Plug 'saadparwaiz1/cmp_luasnip' " snippets source

  Plug 'L3MON4D3/LuaSnip' " snippets plugin
  Plug 'rafamadriz/friendly-snippets' " snippets collection

  " telescope
  Plug 'nvim-lua/plenary.nvim' " library for telescope
  Plug 'nvim-telescope/telescope.nvim'

  " bottom bar
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'

endif

" file browser
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'yuki-yano/fern-preview.vim'

" theme
Plug 'sainnhe/everforest'

call plug#end()

