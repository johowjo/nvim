-- return {
-- 	"nvimtools/none-ls.nvim",
-- 	config = function()
-- 		local null_ls = require("null-ls")
-- 		null_ls.setup({
--       debug = true,
-- 			sources = {
-- 				null_ls.builtins.formatting.stylua,
-- 				null_ls.builtins.formatting.buf,
-- 				null_ls.builtins.formatting.prettier,
-- 				null_ls.builtins.diagnostics.buf,
--         -- null_ls.builtins.diagnostics.eslint_d,
--         -- null_ls.builtins.diagnostics.quick_lint_js,
-- 			},
-- 		})
-- 		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
-- 	end,
-- }

local null_ls = require("null-ls")
null_ls.setup({
  -- debug = true,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.buf,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.buf,
    null_ls.builtins.formatting.black,
    -- null_ls.builtins.diagnostics.eslint_d,
    -- null_ls.builtins.diagnostics.quick_lint_js,
  },
})
vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
