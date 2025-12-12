return {
  pick_buffers = function()
    local buffers = vim.api.nvim_list_bufs()
    local list = {}
    local bufnrs = {}

    for _, buf in ipairs(buffers) do
      if vim.api.nvim_buf_is_loaded(buf) and vim.fn.buflisted(buf) == 1 then
        local name = vim.api.nvim_buf_get_name(buf)
        if name == "" then
          name = "[No Name]"
        else
          name = vim.fn.fnamemodify(name, ":.")
        end
        table.insert(list, string.format("%d: %s", buf, name))
        table.insert(bufnrs, buf)
      end
    end

    local callback = function(win, buf) ---@diagnostic disable-line: unused-local
      local cursor = vim.api.nvim_win_get_cursor(win)
      local line = cursor[1]
      local target_buf = bufnrs[line]
      if target_buf then
        vim.api.nvim_win_close(win, true)
        vim.api.nvim_set_current_buf(target_buf)
      end
    end

    require("custom.picker").pick({ list = list, callback = callback })
  end,
}
