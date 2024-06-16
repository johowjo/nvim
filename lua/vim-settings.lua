vim.cmd("syntax enable")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set rnu")
vim.cmd("set shiftwidth=2")
vim.cmd(":au BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp")
vim.cmd(":au BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html")
vim.cmd(":au BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex")
vim.cmd("highlight link @lsp.type.macro Macro")
vim.cmd("let g:tex_flavor = 'latex'")

vim.lsp.set_log_level("off")

vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost" }, {
	callback = function()
		vim.cmd([[LspStart ]])
	end,
})

function OpenTerm()
	vim.cmd(":term")
	vim.fn.feedkeys("i")
end

function RunJS()
	local hint = vim.fn.input("execute with node %/npm start (f/s)? ")

	if hint == "f" then
		vim.cmd(':TermExec cmd="node %" size=40 direction=vertical')
	elseif hint == "s" then
		vim.cmd(':TermExec cmd="npm start" size=40 direction=vertical')
	end
end

-- function CompileRun()
-- 	vim.cmd(":w") -- Save the current file
--
-- 	local filetype = vim.bo.filetype -- Get the current buffer's filetype
--
-- 	if filetype == "cpp" then
-- 		vim.cmd(":term g++ % && ./a.out")
-- 		vim.fn.feedkeys("i")
-- 	elseif filetype == "javascript" then
-- 		RunJS()
-- 	elseif filetype == "html" then
-- 		vim.cmd(":term open %")
-- 		vim.fn.feedkeys("i")
-- 	elseif filetype == "verilog" then
-- 		vim.cmd(":term iverilog % && ./a.out")
-- 		vim.fn.feedkeys("i")
-- 	elseif filetype == "c" then
-- 		vim.cmd(":term gcc % && ./a.out")
-- 		vim.fn.feedkeys("i")
-- 	elseif filetype == "python" then
-- 		vim.cmd(":term python3 %")
-- 		vim.fn.feedkeys("i")
-- 	end
-- end

function CompileRun()
	vim.cmd(":w") -- Save the current file

	local filetype = vim.bo.filetype -- Get the current buffer's filetype

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

vim.api.nvim_set_keymap("n", "<C-x>", [[:lua CompileRun()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "C", 'gg"*yG', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "E", ":Ex<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "T", ":ToggleTerm size=40 direction=vertical<CR>", { noremap = true, silent = true })
