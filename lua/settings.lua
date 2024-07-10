--editor settings
vim.cmd("syntax enable")
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.rnu = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.splitright = true
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
-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufEnter", "BufReadPost" }, {
--   callback = function()
--     vim.cmd([[LspStart ]])
--   end,
-- })

-- CompileRun function
function CompileRun()
  vim.cmd(":w")
  local filetype = vim.bo.filetype
  local path = vim.fn.expand("%:p")
  vim.cmd("vnew")
  if filetype == "cpp" then
    local command = ":term g++ " .. path .. " && ./a.out"
    vim.cmd(command)
  elseif filetype == "c" then
    local command = ":term gcc " .. path .. " && ./a.out"
    vim.cmd(command)
  elseif filetype == "python" then
    local command = ":term python3 " .. path
    vim.cmd(command)
  elseif filetype == "rust" then
    vim.cmd("term cargo run")
  elseif filetype == "tex" then
    local command = ":term xelatex " .. path
    vim.cmd(command)
  end
  vim.cmd("startinsert")
end
