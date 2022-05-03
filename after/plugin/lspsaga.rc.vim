if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require('lspsaga')
saga.init_lsp_saga()
EOF

nnoremap <silent> gh :Lspsaga lsp_finder<CR>

