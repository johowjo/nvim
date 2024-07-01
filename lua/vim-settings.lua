--basic settings
vim.cmd("syntax enable")
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.rnu = true
--colorscheme
vim.cmd("highlight link @lsp.type.macro Macro")
--buf file with templates
vim.cmd(":au BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp")
vim.cmd(":au BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html")
vim.cmd(":au BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex")
vim.g.tex_flavor = "latex"
vim.g.mapleader = " "
-- vim.cmd("let g:rust_recommended_style = 0")
-- vim.cmd("let g:python_indent = 0")

vim.lsp.set_log_level("off")

vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost" }, {
	callback = function()
		vim.cmd([[LspStart ]])
	end,
})

function RunJS()
	local hint = vim.fn.input("execute with node %/npm start (f/s)? ")

	if hint == "f" then
		vim.cmd(':TermExec cmd="node %" size=40 direction=vertical')
	elseif hint == "s" then
		vim.cmd(':TermExec cmd="npm start" size=40 direction=vertical')
	end
end

function CompileRun()
	vim.cmd(":w")

	local filetype = vim.bo.filetype

	if filetype == "cpp" then
		vim.cmd(':TermExec cmd="g++ % && ./a.out" size=40 direction=vertical')
	elseif filetype == "javascript" then
		RunJS()
	elseif filetype == "html" then
		vim.cmd(':TermExec cmd="open %" size=40 direction=vertical')
	elseif filetype == "c" then
		vim.cmd(':TermExec cmd="gcc % && ./a.out" size=40 direction=vertical')
	elseif filetype == "python" then
		vim.cmd(':TermExec cmd="python3 %" size=40 direction=vertical')
	end
end
