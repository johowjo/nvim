--local N = 5
--local n = math.floor(math.random(0, N))
--
--local function quotes()
--  if n == 0 then
--    return [[雪之下同學，我也喜歡你]]
--  elseif n == 1 then
--    return [[現在的我可是漫畫腦]]
--  elseif n == 2 then
--    return [[幫我開直播]]
--  elseif n == 3 then
--    return [[try to code stuff]]
--  elseif n == 4 then
--    return [[労働はクソということです]]
--  elseif n == 5 then
--    return [[lol jackpot]]
--  end
--end

local function quote()
	-- return [[労働はクソということです]]
  return [[雪之下同學，我也喜歡你]]
	-- return [[gotta lock in]]
  -- return [[installing dependencies...]]
end

-- return {
--   "nvim-lualine/lualine.nvim",
--   config = function()
--     require("lualine").setup({
--       options = {
--         theme = "auto",
--       },
--       sections = {
--         lualine_x = { "encoding", quote, "filetype" },
--       },
--     })
--   end,
-- }

require("lualine").setup({
	options = {
		theme = "auto",
	},
	sections = {
		lualine_x = { "encoding", quote, "filetype" },
	},
})
