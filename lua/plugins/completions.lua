vim.pack.add({
  {
    src = "https://github.com/saghen/blink.cmp",
  },
})

vim.pack.add({
  "https://github.com/L3MON4D3/LuaSnip",
})

local opts = {
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
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
}

require("blink.cmp").setup(opts)
require("luasnip.loaders.from_vscode").lazy_load()
