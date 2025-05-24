require("mason-lspconfig").setup()
require("mason").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
  function(server_name)
    if server_name == "tsserver" then
      server_name = "ts_ls"
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
      })
    end
  end,
})

lspconfig.clangd.setup({
  capabilities = capabilities,
})
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
-- lspconfig.html.setup({
--   capabilities = capabilities,
-- })
lspconfig.ts_ls.setup({
  capabilities = capabilities,
})
lspconfig.tinymist.setup({
  capabilities = capabilities,
})
-- lspconfig.cssls.setup({
--   capabilities = capabilities,
-- })
lspconfig.eslint.setup({
  capabilities = capabilities,
})
lspconfig.texlab.setup({
  capabilities = capabilities,
})
lspconfig.pyright.setup({
  capabilities = capabilities,
})
-- lspconfig.jsonls.setup({
--   capabilities = capabilities,
-- })
-- lspconfig.gopls.setup({
--   capabilities = capabilities,
-- })
-- lspconfig.jdtls.setup({
--   capabilities = capabilities,
--   filetypes = { "java" },
-- })
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
})
lspconfig.zls.setup({
  capabilities = capabilities,
})
lspconfig.cmake.setup({
  capabilities = capabilities,
})
