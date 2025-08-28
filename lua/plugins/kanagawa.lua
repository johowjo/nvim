return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,
  lazy = false,
  opts = {
    undercurl = false,
    overrides = function(colors)
      return {
        ErrorMsg = { fg = 12925779 },
        DiagnosticError = { fg = 12925779 },
        DiagnosticFloatingError = { fg = 12925779 },
        DiagnosticSignError = { fg = 12925779 },
        SpellBad = { sp = 12925779 },
      }
    end,
  },
  config = function(_, opts)
    local kanagawa = require("kanagawa")
    kanagawa.setup(opts)
    kanagawa.load("dragon")
  end,
}
