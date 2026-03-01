local servers = {
  require("lsp.clangd"),
  require("lsp.lua_ls"),
  require("lsp.pyright"),
  require("lsp.rust_analyzer"),
  require("lsp.tinymist"),
}

for _, server in ipairs(servers) do
  vim.lsp.config(server.name, server.config)
  vim.lsp.enable(server.name)
end
