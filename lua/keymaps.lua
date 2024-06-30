-- system
vim.keymap.set("n", "<C-x>", [[:lua CompileRun()<CR>]], { noremap = true, silent = true })
vim.keymap.set("n", "C", 'gg"*yG', { noremap = true, silent = true })
vim.keymap.set("n", "E", ":Ex<CR>", { noremap = true, silent = true })
-- lsp
vim.keymap.set("n", "<C-k>", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<C-d>", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
--telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
--toggleterm
vim.keymap.set("n", "T", ":ToggleTerm size=40 direction=vertical<CR>", { noremap = true, silent = true })
--hop
vim.keymap.set("n", "<leader>h1", require("hop").hint_char1, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h2", require("hop").hint_char2, { noremap = true, silent = true })
