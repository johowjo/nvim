return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettier", stop_after_first = true },
      cpp = { "clang-format" },
      typst = { "prettypst", "typstlyle" },
      toml = { "taplo" }
    },
  },
}
