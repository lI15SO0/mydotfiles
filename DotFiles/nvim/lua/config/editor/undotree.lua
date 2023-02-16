-- https://github.com/mbbill/undotree

local api = require("utils.api")
local options = require("core.options")

local M = {}

function M.before()
	api.map.register({
		mode = {'n'},
		key = '<leader>3',
		fn = "<cmd>UndotreeToggle<CR>",
		options = {silent = true},
		description = "Toggle undotree",
	})
end

function M.load()
	vim.cmd(
		[[
	if has("persistent_undo")
		" 在 config.lua 中定义好了 undotree_dir 全局变量
		let target_path = expand(undotree_dir)
		if !isdirectory(target_path)
			call mkdir(target_path, "p", 0700)
		endif
		let &undodir = target_path
		set undofile
	]]
	)
end

function M.after()
end

return M
