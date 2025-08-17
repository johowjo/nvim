--editor
vim.keymap.set("n", "<C-x>", ":lua CompileRun()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>C", 'gg"*yG', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>o", "o<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>O", "O<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>N", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", ":tabprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })
--term
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>vt", ":vnew<CR>:te<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ht", ":new<CR>:te<CR>", { noremap = true, silent = true })
--lsp
vim.keymap.set("n", "<C-d>", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
--luasnip
vim.api.nvim_set_keymap("s", "<Tab>", ":lua require'luasnip'.jump(1)<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":lua require'luasnip'.jump(1)<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("s", "<S-Tab>", ":lua require'luasnip'.jump(-1)<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":lua require'luasnip'.jump(-1)<CR>", { silent = true, noremap = true })
--telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
--hop
vim.keymap.set("n", "<leader>H1", require("hop").hint_char1, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>H2", require("hop").hint_char2, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Hw", require("hop").hint_words, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Hp", require("hop").hint_patterns, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Hl", ":lua HopLine()<CR>", { noremap = true, silent = true })
--oil
vim.keymap.set("n", "E", ":Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nv", ":vnew<CR>:Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nh", ":new<CR>:Oil<CR>", { noremap = true, silent = true })
--harpoon
vim.keymap.set("n", "<leader>Hm", require("harpoon.mark").add_file, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Hs", require("harpoon.ui").toggle_quick_menu, { noremap = true, silent = true })
--codesnap
vim.keymap.set("n", "<leader>cc", ":CodeSnap<CR>", { noremap = true, silent = true })
--function implementation
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
  elseif filetype == "javascript" then
    local command = "term node " .. path
    vim.cmd(command)
  elseif filetype == "typescript" or filetype == "typescriptreact" or filetype == "javascriptreact" then
    local command = "term pnpm dev"
    vim.cmd(command)
  end
  vim.cmd("startinsert")
end

-- customized hop function for in one line
function HopLine()
  require("hop").hint_words({
    current_line_only = true,
  })
end
