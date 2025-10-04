return {
  pick = function(args)
    local list = args.list
    local window_opts = args.window_opts
    local callback = args.callback

    if window_opts == nil then
      local width = 60
      local height = math.min(#list, 20)
      window_opts = {
        relative = "editor",
        width = width,
        height = height,
        row = (vim.o.lines - height) / 2,
        col = (vim.o.columns - width) / 2,
        style = "minimal",
        border = "rounded",
      }
    end

    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, list)

    local win = vim.api.nvim_open_win(buf, true, window_opts)
    vim.api.nvim_set_option_value("cursorline", true, { win = win })
    vim.api.nvim_set_option_value("modifiable", false, { buf = buf })

    vim.keymap.set("n", "<CR>", function()
      callback(win, buf)
    end)

    vim.keymap.set("n", "q", function()
      vim.api.nvim_win_close(win, true)
    end, { buffer = buf, nowait = true })
  end,
}
