return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = { left = " ", right = " " },
      section_separators = { left = " ", right = " " },
      theme = "auto",
    },
    sections = {
      lualine_x = {
        "encoding",
        "filetype",
      },
    },
  },
}
