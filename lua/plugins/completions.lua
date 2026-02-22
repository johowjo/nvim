return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
      keymap = {
        preset = "enter",
        ["<Tab>"] = {
          function(cmp)
            return cmp.select_next()
          end,
          "snippet_forward",
          "fallback",
        },
        ["<S-Tab>"] = {
          function(cmp)
            return cmp.select_prev()
          end,
          "snippet_backward",
          "fallback",
        },
      },
      completion = {
        documentation = { auto_show = true, window = { border = "single" } },
      },
      snippets = { preset = "luasnip" },
    },
    config = function(_, opts)
      require("blink.cmp").setup(opts)
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").load({
        paths = { "~/.config/nvim/lua/snippets/" },
      })
    end,
  },
}
