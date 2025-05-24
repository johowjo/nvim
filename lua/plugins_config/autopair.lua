local rule = require("nvim-autopairs.rule")
local pairs = require("nvim-autopairs")
local cond = require("nvim-autopairs.conds")

pairs.add_rules({
  rule("$", "$", {"tex", "latex", "typst"})
    :with_pair(cond.not_before_text("\\"))
    :with_pair(cond.not_after_regex("%w"))
    :with_move(cond.after_text("$"))
})
