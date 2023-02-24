-- https://github.com/phaazon/hop.nvim

local api = require("utils.api")

local M = {}

function M.before()
	api.map.bulk_regist({
		{
			mode = {'n'},
			key = '<leader>w',
			fn = '<cmd>HopWord<CR>',
			options = {silent = true},
			description = 'Hop jump word mode',
		},
		{
			mode = {'n'},
			key = '<leader>e',
			fn = '<cmd>HopChar1<CR>',
			options = {silent = true},
			description = 'Hop jump char mode',
		},
		{
			mode = {'n'},
			key = '<leader>p',
			fn = '<cmd>HopPattern<CR>',
			options = {silent = true},
			description = 'Hop jump pattern mode',
		},
		{
			mode = {'n'},
			key = '<leader>l',
			fn = '<cmd>HopLineStart<CR>',
			options = {silent = true},
			description = 'Hop jump line mode',
		},
	})
end

function M.load()
	require'hop'.setup{ keys = 'etovxqpdygfblzhckisuran' }
end

function M.after()
end

return M
