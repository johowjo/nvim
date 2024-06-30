local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                               __                ]],
  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
  dashboard.button("<space>f", "  Find File", ":Telescope find_files<CR>"),
  dashboard.button("<space>s r", "  Recently Used Files", ":Telescope oldfiles<CR>"),
  dashboard.button("<space>s t", "  Find Word", ":Telescope live_grep<CR>"),
  dashboard.button("<space>L c", "  Configuration", ":edit /Users/howardliao/.config/nvim/ <CR>"),
  dashboard.button("t", "  Terminal", ":term<CR>"),
  dashboard.button("<space>L z", "  Lazy", ":Lazy<CR>"),
}
-- icons
--
--
--󰨭
--
--
--
--local handle = io.popen("fortune")
--local fortune = handle:read("*a")
--handle:close()
local function footer()
  return "雪之下同學，我也喜歡你"
end

dashboard.section.footer.val = footer()

dashboard.config.opts.noautocmd = true

vim.cmd([[autocmd User AlphaReady echo 'ready']])

alpha.setup(dashboard.config)
