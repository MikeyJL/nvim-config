if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

"Appearance
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

"Explorer
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-tree.lua'

"Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'kshenoy/vim-signature'
Plug 'docunext/closetag.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'rrethy/vim-illuminate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'numToStr/Comment.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
Plug 'folke/todo-comments.nvim'

"Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"Git
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/conflict-marker.vim'

"Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

"LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'

call plug#end()
