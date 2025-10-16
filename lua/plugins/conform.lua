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

    format_on_save = function(bufnr)
      if vim.api.nvim_buf_line_count(bufnr) > 5000 then
      return
    end
    return {
      timeout_ms = 500,  -- adjust as needed
      lsp_fallback = true,
    }
    end
  },
}
