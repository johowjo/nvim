require("mason").setup()

local servers = { 'lua_ls', 'clangd', 'ts_ls', 'rust_analyzer', 'eslint', 'pyright' }

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    capabilities = require('blink.cmp').get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities())
  })
  vim.lsp.enable(server)
end
