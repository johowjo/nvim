-- return {
-- 	{
-- 		"nvim-telescope/telescope.nvim",
-- 		tag = "0.1.5",
-- 		dependencies = { "nvim-lua/plenary.nvim" },
-- 		config = function()
-- 			local builtin = require("telescope.builtin")
-- 			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
-- 			vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
-- 			vim.keymap.set("n", "<C-i>", builtin.planets, {})
-- 		end,
-- 	},
-- 	{
-- 		"nvim-telescope/telescope-ui-select.nvim",
-- 		config = function()
-- 			require("telescope").setup({
-- 				defaults = {
--           layout_strategy = 'vertical',
-- 					layout_config = {
-- 						-- horizontal = {
-- 						-- 	preview_cutoff = 0,
-- 						-- },
--             vertical = { width = 0.5 },
-- 					},
-- 				},
-- 				extensions = {
-- 					["ui-select"] = {
-- 						require("telescope.themes").get_dropdown({}),
-- 					},
-- 				},
-- 			})
-- 			require("telescope").load_extension("ui-select")
-- 		end,
-- 	},
-- }

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
vim.keymap.set("n", "<C-i>", builtin.planets, {})
require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			-- horizontal = {
			-- 	preview_cutoff = 0,
			-- },
			vertical = { width = 0.5 },
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
require("telescope").load_extension("ui-select")
