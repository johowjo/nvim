local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
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
  -- "mbbill/undotree",
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
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
  {
    "nvimtools/none-ls.nvim",
  },
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
    "hadronized/hop.nvim",
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- {
  --   "mfussenegger/nvim-jdtls",
  --   ft = { "java" },
  -- },
  {
    "ThePrimeagen/harpoon",
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<space>Lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        {
          name = "Obsidian",
          path = "~/Obsidian",
        },
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
})
