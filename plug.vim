if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

"Appearance
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

"Explorer
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'

"Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'kshenoy/vim-signature'
Plug 'docunext/closetag.vim'

"Typing assist
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"NeoVim
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
endif

call plug#end()
