require("tokyonight").setup({
	style = "moon",
	on_highlights = function(hl, cl)
		hl.DiagnosticUnderlineWarn.undercurl = nil
		hl.DiagnosticUnderlineWarn.underline = true
		hl.DiagnosticUnderlineError.undercurl = nil
		hl.DiagnosticUnderlineError.underline = true
	end,
})
