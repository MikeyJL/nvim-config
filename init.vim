set number relativenumber
set scrolloff=999
set nohlsearch

"Mappings
inoremap jj <Esc>

"-------------------------------------------------------
"Imports
"-------------------------------------------------------

runtime ./plug.vim

"-------------------------------------------------------
"Appearance
"-------------------------------------------------------

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme nord


"-------------------------------------------------------
"Explorer
"-------------------------------------------------------

"Use nord theme for CHADtree
let g:chadtree_settings = { 'theme.text_colour_set': 'nord' }

"Mapping
nnoremap <leader>v <cmd>CHADopen<cr>

"-------------------------------------------------------
"Dashboard
"-------------------------------------------------------

let g:dashboard_default_executive = "telescope"

"-------------------------------------------------------
"Completion
"-------------------------------------------------------

"Starts COQ on open
let g:coq_settings = { 'auto_start': 'shut-up' }

"-------------------------------------------------------
"Formatting
"-------------------------------------------------------

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

autocmd BufWritePost *.py !black <afile>
