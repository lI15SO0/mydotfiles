-- https://github.com/nvim-telescope/telescope.nvim

local api = require("utils.api")
local M = {
	requires = {
		"telescope",
	}
}

function M.before() end

function M.load()
	M.telescope.setup()
end

function M.after()
	api.map.bulk_regist( {
		{
			mode = {'n'},
			key = '<leader>ff',
			fn = function()
				require("telescope.builtin").find_files()
			end,
			options = {silent = true},
			description = 'use Telescope to find files',
		},
		{
			mode = {'n'},
			key = '<leader>fg',
			fn = function()
				require("telescope.builtin").live_grep()
			end,
			options = {silent = true},
			description = 'use Telescope to find in rg',
		},
		{
			mode = {'n'},
			key = '<leader>fb',
			fn = function()
				require("telescope.builtin").buffers()
			end,
			options = {silent = true},
			description = 'use Telescope to jump buffer',
		},
		{
			mode = {'n'},
			key = '<leader>fh',
			fn = function()
				require("telescope.builtin").help_tags()
			end,
			options = {silent = true},
			description = 'use Telescope to show help page',
		},
		{
			mode = {'n'},
			key = '<leader>fo',
			fn = function()
				require("telescope.builtin").oldfile()
			end,
			options = {silent = true},
			description = 'use Telescope to find recent open file',
		},
		{
			mode = {'n'},
			key = '<leader>fm',
			fn = function()
				require("telescope.builtin").marks()
			end,
			options = {silent = true},
			description = 'use Telescope to find marks',
		},
	})
end

return M
