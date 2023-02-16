-- https://github.com/goolord/alpha-nvim

local M = {}

function M.before() end
function M.load()
	require'alpha'.setup(require'alpha.themes.dashboard'.config)
end
function M.after() end

return M
