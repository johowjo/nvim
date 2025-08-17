local grp = vim.api.nvim_create_augroup("typst", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = grp,
  pattern = "typst",
  callback = function(args)
    vim.cmd("TypstPreview")
    vim.api.nvim_create_autocmd("BufUnload", {
      buffer = args.buf,
      once = true,
      callback = function(ev)
        vim.cmd("TypstPreviewStop")
      end,
    })
  end,
})

