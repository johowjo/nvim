return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {}
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local servers = { 'lua_ls', 'clangd', 'ts_ls', 'rust_analyzer', 'eslint', 'pyright' , 'tinymist'}

      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = require('blink.cmp').get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities())
        })
        vim.lsp.enable(server)
      end
    end
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  }
}
