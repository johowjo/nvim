local function quote()
	-- return [[労働はクソということです]]
  return [[雪之下同學，我也喜歡你]]
	-- return [[gotta lock in]]
  -- return [[installing dependencies...]]
end

require("lualine").setup({
	options = {
		theme = "tokyonight",
	},
	sections = {
		lualine_x = { "encoding", "filetype" },
	},
})
