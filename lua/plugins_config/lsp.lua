require("mason-lspconfig").setup()

require("mason").setup()

-- completions.lua
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/sinps" })

local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" }, -- For luasnip users.
  }, { { name = "buffer" } }),
})
--

-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function()
-- 		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- 		vim.keymap.set("n", "<C-k>", vim.lsp.buf.code_action, {})
-- 	end,
-- })

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
-- lspconfig.tsserver.setup({
--   capabilities = capabilities,
-- })
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
lspconfig.cmake.setup({
  capabilities = capabilities,
})
