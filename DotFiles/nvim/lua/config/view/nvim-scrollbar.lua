-- https://github.com/petertriho/nvim-scrollbar
local M = {}

function M.before() end
function M.load()
	require("scrollbar").setup()
end
function M.after() end

return M

