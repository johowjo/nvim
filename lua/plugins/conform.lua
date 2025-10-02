return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      cpp = { "clang-format" },
      typst = { "prettypst", "typstlyle" },
      toml = { "taplo" },
      html = { "prettier" },
      css = { "prettier" },
    },
  },
}
