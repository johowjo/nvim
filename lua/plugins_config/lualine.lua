local function quote()
  -- return [[労働はクソということです]]
  return [[雪之下同學，我也喜歡你]]
  -- return [[gotta lock in]]
  -- return [[installing dependencies...]]
end

require("lualine").setup({
  options = {
    component_separators = { left = " ", right = " " },
    section_separators = { left = " ", right = " " },
    theme = "auto",
  },
  sections = {
    lualine_x = {
      "encoding",
      "filetype",
    },
  },
})
