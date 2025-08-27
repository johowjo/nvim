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
    "nvim-lualine/lualine.nvim",
  },
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
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
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
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
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
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  -- mini
  -- {
  --   "echasnovski/mini.ai",
  --   version = false,
  -- },
  {
    "echasnovski/mini.surround",
    version = false,
  },
  {
    "chomosuke/typst-preview.nvim",
    lazy = false, -- or ft = 'typst'
    version = "1.*",
    opts = {},    -- lazy.nvim will implicitly calls `setup {}`
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    opts = {
      sources = {
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
      keymap = { preset = 'enter' },
      completion = {
        documentation = { auto_show = true },
        trigger = { show_on_backspace = true }
      },
      snippets = { preset = 'luasnip' },
    },
  },
})
