return {
  name = "tinymist",
  ---@type vim.lsp.Config
  config = {
    cmd = { "tinymist" },
    filetypes = { "typst" },
    root_markers = { ".git" },
  },
}
