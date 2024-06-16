-- return {
--   "nvim-treesitter/nvim-treesitter",
--   build = ":TSUpdate",
--   config = function()
--     local config = require("nvim-treesitter.configs")
--     config.setup({
--       auto_install = false,
--       highlight = {
--         enable = true,
--         -- custom_captures = {
--         --   ["lsp.type.macro"] = "cppPreProc",
--         --   ["lsp.type.macro"] = "Macro",
--         -- },
--       },
--       indent = { enable = true },
--     })
--   end,
-- }

local config = require("nvim-treesitter.configs")
config.setup({
	auto_install = false,
	highlight = {
		enable = true,
	},
	indent = { enable = true },
})
