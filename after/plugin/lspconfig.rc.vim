if !exists("g:lspconfig")
  finish
endif

lua << EOL
require("nvim-lsp-installer").setup {}

local lspconfig = require("lspconfig")
local protocol = require("vim.lsp.protocol")

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
vim.diagnostic.config({
  virtual_text = false
})

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_keymap("n", 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap("n", 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap("n", '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap("n", '<space>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap("n", '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap("n", '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap("n", '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'dockerls', 'eslint', 'graphql', 'jsonls', 'lemminx', 'psalm', 'pyright', 'sourcekit',  'stylelint_lsp', 'tailwindcss', 'theme_check', 'tsserver', 'vimls', 'volar', 'vuels', 'zk' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
EOL
