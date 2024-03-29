set number relativenumber
set scrolloff=999
set nohlsearch
set completeopt=menu,menuone,noselect
set clipboard=unnamedplus

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

" Disable the default highlight group
let g:conflict_marker_highlight_group = ''

" Include text after begin and end markers
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e
highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81
highlight Normal guibg=none
highlight NoneText guibg=none


"-------------------------------------------------------
"Explorer
"-------------------------------------------------------

"Mapping
nnoremap <leader>v <cmd>NvimTreeFindFileToggle<cr>

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
let g:pydocstring_formatter = 'google'

autocmd BufWritePost *.py silent! !black <afile>
