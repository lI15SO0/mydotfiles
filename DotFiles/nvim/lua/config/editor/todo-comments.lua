-- https://github.com/folke/todo-comments.nvim

local api = require("utils.api")
local options = require("core.options")

local M = {}

function M.before()
		api.map.register (
		{
			mode = {'n'},
			key = '<leader>ft',
			fn = "<cmd>TodoTelescope<CR>",
			options = {silent = true},
			description = 'Toggle telescope to search TODO Note',
		}
	)
end

function M.load()
	require("todo-comments").setup(
		{
			keywords = {
				-- alt ： 别名
				FIX = {
					icon = " ",
					color = options.color.Error,
					alt = {"FIXME", "BUG", "FIXIT", "ISSUE", "!"}
				},
				TODO = {icon = " ", color = options.color.OK},
				HACK = {icon = " ", color = options.color.Hack},
				WARN = {icon = " ", color = options.color.Warning, alt = {"WARNING", "XXX"}},
				PERF = {icon = " ", color = options.color.Hint, alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
				NOTE = {icon = " ", color = options.color.Information, alt = {"INFO"}}
			}
		}
	)
end

function M.after()
end

return M
