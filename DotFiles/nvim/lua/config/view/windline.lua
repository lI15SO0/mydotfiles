-- https://github.com/windwp/windline.nvim
local M = {}

function M.before() end
function M.load()
	require("config.view.windline_theme")
end
function M.after() end

return M
