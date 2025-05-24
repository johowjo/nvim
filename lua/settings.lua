--editor settings
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
vim.cmd("syntax enable")
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.rnu = true
vim.opt.number = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.splitright = true
vim.opt.cul = true
--globals
vim.g.tex_flavor = "latex"
vim.g.mapleader = " "
--no log file
-- vim.lsp.set_log_level("off")

--autocommands
--buf file with templates
-- vim.cmd(":au BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex")
