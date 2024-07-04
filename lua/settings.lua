--editor settings
vim.cmd("syntax enable")
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.rnu = true
vim.opt.backspace = { "start", "eol", "indent" }
--globals
vim.g.tex_flavor = "latex"
vim.g.mapleader = " "
--no log file
vim.lsp.set_log_level("off")

--autocommands
--
--buf file with templates
vim.cmd(":au BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp")
vim.cmd(":au BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html")
vim.cmd(":au BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex")
--lsp autostart
vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost" }, {
	callback = function()
		vim.cmd([[LspStart ]])
	end,
})

-- CompileRun function
function CompileRun()
	vim.cmd(":w")

	local filetype = vim.bo.filetype

	if filetype == "cpp" then
    vim.cmd(":term g++ % && ./a.out")
		vim.fn.feedkeys("i")
	elseif filetype == "c" then
    vim.cmd(":term gcc % && ./a.out")
		vim.fn.feedkeys("i")
	elseif filetype == "python" then
    vim.cmd(":term python3 %")
		vim.fn.feedkeys("i")
	end
end
