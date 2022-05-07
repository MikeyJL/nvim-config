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
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

"Utilities
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'kshenoy/vim-signature'
Plug 'docunext/closetag.vim'
Plug 'akinsho/toggleterm.nvim'

"Completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

"Typing assist
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'

call plug#end()
