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

-- local opts = {}

-- require("lazy").setup("plugins")
-- require("lazy").setup({
--   "plugi",
--   "simrat39/rust-tools.nvim",
-- })
-- require("rust-tools")
require("vim-settings")
require("plugins")
require("plugins_config")

-- vim.cmd.colorscheme("catppuccin")
-- vim.cmd.colorscheme("material")
vim.cmd.colorscheme("kanagawa-wave")
-- vim.cmd.colorscheme("icerberg")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd("let g:tex_flavor = 'latex'")
--
--
