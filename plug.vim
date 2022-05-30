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
Plug 'glepnir/dashboard-nvim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'kshenoy/vim-signature'
Plug 'docunext/closetag.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'rrethy/vim-illuminate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'pwntester/octo.nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'pechorin/any-jump.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

"Git
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/conflict-marker.vim'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

call plug#end()
