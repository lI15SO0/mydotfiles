-- https://github.com/numToStr/FTerm.nvim

local api = require("utils.api")
local options = require("core.options")

local M = {}

function M.before()
	api.map.bulk_regist {
		{
			mode = {'n', 't'},
			key = '<A-i>',
			fn = require("FTerm").toggle,
			options = {silent = true},
			description = 'toggle term',
		},
	}
	
end

function M.load()
	require'FTerm'.setup(
	{
		ft = 'FTerm',
		cmd = os.getenv('SHELL'),
		border = options.border,
		auto_close = true,
		hl = 'Normal',
		blend = 0,
		dimensions = {
			height = 0.8, -- Height of the terminal window
			width = 0.8, -- Width of the terminal window
			x = 0.5, -- X axis of the terminal window
			y = 0.5, -- Y axis of the terminal window
		},
		clear_env = false,
		env = nil,
		on_exit = nil,
		on_stdout = nil,
		on_stderr = nil,
	})
end

function M.after()
end

return M
