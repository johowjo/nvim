require("tokyonight").setup({
	style = "moon",
	on_highlights = function(hl, cl)
		hl.SpellBad.undercurl = nil
		hl.SpellBad.underline = true
		hl.SpellCap.undercurl = nil
		hl.SpellCap.underline = true
		hl.SpellRare.undercurl = nil
		hl.SpellRare.underline = true
		hl.SpellLocal.undercurl = nil
		hl.SpellLocal.underline = true
		hl.DiagnosticUnderlineWarn.undercurl = nil
		hl.DiagnosticUnderlineWarn.underline = true
		hl.DiagnosticUnderlineError.undercurl = nil
		hl.DiagnosticUnderlineError.underline = true
		hl.DiagnosticUnderlineInfo.undercurl = nil
		hl.DiagnosticUnderlineInfo.underline = true
		hl.DiagnosticUnderlineHint.undercurl = nil
		hl.DiagnosticUnderlineHint.underline = true
		hl["@lsp.type.unresolvedReference"].undercurl = nil
		hl["@lsp.type.unresolvedReference"].underline = true
	end,
})

-- vim.cmd.colorscheme("tokyonight")
