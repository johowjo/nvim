local map = function(mode, lhs, rhs, nor, sil)
  if nor == nil then
    nor = true
  end
  if sil == nil then
    sil = true
  end
  vim.keymap.set(mode, lhs, rhs, { noremap = nor, silent = sil })
end

local float_window_config = {
  border = "single",
  max_height = 20,
  max_width = 130,
  close_events = {
    "BufEnter",
    "CursorMoved",
    "ExitPre",
    "ModeChanged",
    "WinEnter",
  },
}
--editor
map("n", "<leader>C", 'gg"*yG')
map("n", "<leader>o", "o<Esc>")
map("n", "<leader>O", "O<Esc>")
map("n", "<leader>m", "ma")
map("n", "<leader>'", "'a")
map("n", "gB", "<C-t>")
map("v", "y", '"*y')
--term
map("t", "<esc>", "<C-\\><C-n>")
map("n", "<leader>tv", ":vnew<CR>:te<CR>")
map("n", "<leader>th", ":new<CR>:te<CR>")
--lsp
map("n", "<C-d>", function()
  vim.diagnostic.open_float(float_window_config)
end)
map("n", "K", function()
  vim.lsp.buf.hover(float_window_config)
end)
map("n", "<C-f>", require("conform").format)
map("n", "gd", vim.lsp.buf.definition)
map("n", "gD", vim.lsp.buf.declaration)
--oil
map("n", "E", ":Ex<CR>")
map("n", "<leader>nv", ":vnew<CR>:Ex<CR>")
map("n", "<leader>nh", ":new<CR>:Ex<CR>")
