return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
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
  },
  config = function(_, opts)
    require("telescope").setup(opts)
  end,
}
