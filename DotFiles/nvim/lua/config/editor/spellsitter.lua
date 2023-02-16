-- https://github.com/lewis6991/spellsitter.nvim

local M = {}

function M.before()
end

function M.load()
	require('spellsitter').setup{
		enable = true,
		debug = false,
	}
end

function M.after()
end

return M
