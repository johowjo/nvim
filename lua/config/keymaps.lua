-- functions
local hintline = function()
	require("hop").hint_words({
		current_line_only = true,
	})
end

local map = function(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end
--editor
map("n", "<leader>C", 'gg"*yG')
map("n", "<leader>o", "o<Esc>")
map("n", "<leader>O", "O<Esc>")
map("n", "<leader>N", ":tabnew<CR>")
map("n", "<leader>h", ":tabprevious<CR>")
map("n", "<leader>l", ":tabnext<CR>")
--term
map("t", "<esc>", "<C-\\><C-n>")
map("n", "<leader>vt", ":vnew<CR>:te<CR>")
map("n", "<leader>ht", ":new<CR>:te<CR>")
--lsp
map("n", "<C-d>", vim.diagnostic.open_float)
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
map("n", "<leader>Hl", hintline)
--oil
map("n", "E", ":Oil<CR>")
map("n", "<leader>nv", ":vnew<CR>:Oil<CR>")
map("n", "<leader>nh", ":new<CR>:Oil<CR>")
