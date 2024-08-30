local builtin = require("telescope.builtin")
-- vim.keymap.set("n", "<C-p>", builtin.find_files, {})
-- vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
require("telescope").setup({
	defaults = {
		-- layout_strategy = "vertical",
		layout_strategy = "horizontal",
		layout_config = {
			-- horizontal = {
			-- 	preview_cutoff = 0,
			-- },
			-- vertical = { width = 0.5 },
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
require("telescope").load_extension("ui-select")
