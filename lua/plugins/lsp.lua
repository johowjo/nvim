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
        "lua_ls",
        "clangd",
        "ts_ls",
        "rust_analyzer",
        "eslint",
        "pyright",
        "tinymist",
        "texlab",
      }

      local cmd = {
        ["clangd"] = {
          "clangd",
          "--completion-style=detailed",
          "--header-insertion=never",
        },
      }

      for _, server in ipairs(servers) do
        if cmd[server] ~= nil then
          vim.lsp.config(server, {
            capabilities = require("blink.cmp").get_lsp_capabilities(
              vim.lsp.protocol.make_client_capabilities()
            ),
            cmd = cmd[server],
          })
        else
          vim.lsp.config(server, {
            capabilities = require("blink.cmp").get_lsp_capabilities(
              vim.lsp.protocol.make_client_capabilities()
            ),
          })
        end
        vim.lsp.enable(server)
      end
    end,
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}
