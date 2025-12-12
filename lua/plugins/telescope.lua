return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
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
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("ui-select")
  end,
}
