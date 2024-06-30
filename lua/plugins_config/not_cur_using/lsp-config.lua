require("mason-lspconfig").setup()

require("mason").setup()

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	underline = false,
-- })

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
	capabilities = capabilities,
})
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.html.setup({
	capabilities = capabilities,
})
lspconfig.tsserver.setup({
	capabilities = capabilities,
})
lspconfig.cssls.setup({
	capabilities = capabilities,
})
lspconfig.eslint.setup({
	capabilities = capabilities,
})
lspconfig.texlab.setup({
	capabilities = capabilities,
})
lspconfig.pyright.setup({
	capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = on_attach,
	cmd = {
		"rustup",
		"run",
		"stable",
		"rust-analyzer",
	},
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<C-k>", vim.lsp.buf.code_action, {})
