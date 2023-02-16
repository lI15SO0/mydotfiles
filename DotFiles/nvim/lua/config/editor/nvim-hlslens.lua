-- https://github.com/kevinhwang91/nvim-hlslens

local M = {}

function M.before()
end

function M.load()
	require('hlslens').setup()
end

function M.after()
end
return M
