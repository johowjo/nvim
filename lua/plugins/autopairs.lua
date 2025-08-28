return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {}, -- runs setup({})
  config = function(_, opts)
    local pairs = require("nvim-autopairs")
    local rule = require("nvim-autopairs.rule")
    local cond = require("nvim-autopairs.conds")

    pairs.setup(opts)

    pairs.add_rules({
      rule("$", "$", { "tex", "latex", "typst" })
        :with_pair(cond.not_before_text("\\"))
        :with_pair(cond.not_after_regex("%w"))
        :with_move(cond.after_text("$")),
    })
  end,
}
