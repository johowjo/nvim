local kanagawa = require("kanagawa")

kanagawa.setup({
  overrides = function(colors)
    return {
      ErrorMsg = { fg = 12925779 },
      DiagnosticError = { fg = 12925779 },
      DiagnosticFloatingError = { fg = 12925779 },
      DiagnosticSignError = { fg = 12925779 },
      SpellBad = { sp = 12925779 },
    }
  end,
})

kanagawa.load("dragon")
