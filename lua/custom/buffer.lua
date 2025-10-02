return {
  open_buffer_list = function()
    local buffers = vim.api.nvim_list_bufs()
    local lines = {}
    local bufnrs = {}

    for _, buf in ipairs(buffers) do
      if vim.api.nvim_buf_is_loaded(buf) and vim.fn.buflisted(buf) == 1 then
        local name = vim.api.nvim_buf_get_name(buf)
        if name == "" then
          name = "[No Name]"
        else
          name = vim.fn.fnamemodify(name, ":.")
        end
        table.insert(lines, string.format("%d: %s", buf, name))
        table.insert(bufnrs, buf)
      end
    end

    local buf = vim.api.nvim_create_buf(false, true)

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local width = 60
    local height = math.min(#lines, 20)
    local opts = {
      relative = "editor",
      width = width,
      height = height,
      row = (vim.o.lines - height) / 2,
      col = (vim.o.columns - width) / 2,
      style = "minimal",
      border = "rounded",
    }

    local win = vim.api.nvim_open_win(buf, true, opts)
    vim.api.nvim_set_option_value("cursorline", true, { win = win })


    vim.keymap.set("n", "<CR>", function()
      local cursor = vim.api.nvim_win_get_cursor(win)
      local line = cursor[1]
      local target_buf = bufnrs[line]
      if target_buf then
        vim.api.nvim_win_close(win, true)
        vim.api.nvim_set_current_buf(target_buf)
      end
    end, { buffer = buf, nowait = true })

    vim.keymap.set("n", "q", function()
      vim.api.nvim_win_close(win, true)
    end, { buffer = buf, nowait = true })
  end,
}
