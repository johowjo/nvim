local map = function(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

local float_window_config = {
  border = "single",
  max_height = 20,
  max_width = 130,
  close_events = { "BufEnter", "CursorMoved", "ExitPre", "ModeChanged", "WinEnter" },
}
--editor
map("n", "<leader>C", 'gg"*yG')
map("n", "<leader>o", "o<Esc>")
map("n", "<leader>O", "O<Esc>")
map("n", "<leader>N", ":tabnew<CR>")
map("n", "<leader>h", ":tabprevious<CR>")
map("n", "<leader>l", ":tabnext<CR>")
map("v", "y", '"*y')
--term
map("t", "<esc>", "<C-\\><C-n>")
map("n", "<leader>vt", ":vnew<CR>:te<CR>")
map("n", "<leader>ht", ":new<CR>:te<CR>")
--lsp
map("n", "<C-d>", function()
  vim.diagnostic.open_float(float_window_config)
end)
map("n", "K", function()
  vim.lsp.buf.hover(float_window_config)
end)
map("n", "gd", function()
  vim.cmd("vsplit")
  vim.lsp.buf.definition()
end)
map("n", "<C-a>", vim.lsp.buf.code_action)
map("n", "<C-f>", require("conform").format)
--telescope
local builtin = require("telescope.builtin")
map("n", "<C-p>", builtin.find_files)
map("n", "<C-o>", builtin.live_grep)
--hop
map("n", "<leader>H1", require("hop").hint_char1)
map("n", "<leader>H2", require("hop").hint_char2)
map("n", "<leader>Hw", require("hop").hint_words)
map("n", "<leader>Hp", require("hop").hint_patterns)
map("n", "<leader>Hl", function()
  require("hop").hint_words({
    current_line_only = true,
  })
end)
--oil
map("n", "E", ":Oil<CR>")
map("n", "<leader>nv", ":vnew<CR>:Oil<CR>")
map("n", "<leader>nh", ":new<CR>:Oil<CR>")
--tabs
map("n", "<C-b>l", ":tabnext<CR>")
map("n", "<C-b>h", ":tabprev<CR>")
map("n", "<C-b>n", ":tabnew<CR>")
