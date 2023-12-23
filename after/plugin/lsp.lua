local lsp_zero = require('lsp-zero')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	"tsserver",
	"eslint",
	"lua_ls",
	"cssls",
	"html",
	"jsonls",
	"tailwindcss",
  },
  handlers = {
    lsp_zero.default_setup,
  },
  capabilities = capabilities,
})
