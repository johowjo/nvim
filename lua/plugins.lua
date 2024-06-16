require("lazy").setup({
  -- "goolord/alpha-nvim",
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = false,
    config = true,
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
  },
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-web-devicons",
  "mbbill/undotree",
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  "nvim-telescope/telescope-ui-select.nvim",
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },
  {
    "oahlen/iceberg.nvim",
    name = "iceberg",
    priority = 1000,
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    lazy = false,
    config = function()
      require("kanagawa").setup({
        undercurl = false,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    lazy = false,
  },
  "nvimtools/none-ls.nvim",
  {
    "williamboman/mason.nvim",
    lazy = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "akinsho/toggleterm.nvim",
    confifg = true,
  },
  -- another day
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --   },
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify",
  --   },
  -- },
  -- fuck Vimtex
  -- {
  -- 	"lervag/vimtex",
  -- 	lazy = false,
  -- 	init = function()
  -- 		-- VimTeX configuration goes here
  -- 	end,
  -- },
})
