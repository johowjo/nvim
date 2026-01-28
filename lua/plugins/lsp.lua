return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local servers = {
        { name = "lua_ls" },
        {
          name = "clangd",
          cmd = {
            "clangd",
            "--completion-style=detailed",
            "--function-arg-placeholders=false",
            "--header-insertion=never",
          },
        },
        { name = "ts_ls" },
        { name = "rust_analyzer" },
        { name = "eslint" },
        { name = "pyright" },
        { name = "tinymist" },
        { name = "texlab" },
      }

      for _, server in ipairs(servers) do
        if server.cmd ~= nil then
          vim.lsp.config(server.name, {
            capabilities = require("blink.cmp").get_lsp_capabilities(
              vim.lsp.protocol.make_client_capabilities()
            ),
            cmd = server.cmd,
          })
        else
          vim.lsp.config(server.name, {
            capabilities = require("blink.cmp").get_lsp_capabilities(
              vim.lsp.protocol.make_client_capabilities()
            ),
          })
        end
        vim.lsp.enable(server.name)
      end
    end,
  },
}
