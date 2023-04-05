-- https://github.com/liuchengxu/vista.vim

local api = require("utils.api")

local M = {}

function M.before()
	vim.cmd(
		[[
	" 缩进显示方式
	let g:vista_icon_indent = ["▸ ", ""]
	" 通过那种方式渲染大纲预览（ctags 或者 nvim_lsp）
	let g:vista_default_executive = 'nvim_lsp'
	" 启用图标支持"
	let g:vista#renderer#enable_icon = 1
	let g:vista#renderer#icons = {
	\   "function": "\uf794",
	\   "Array": 'L',
	\	"Boolean": "TF",
	\	"String": "\"\"",
	\   "variable": "\uf71b",
	\  }
	]]
	)
end

function M.load()
	api.map.register({
		mode = {'n'},
		key = '<leader>2',
		fn = "<cmd>Vista!!<CR>",
		options = {silent = true},
		description = 'Toggle Vista',
	})
end

function M.after()
end

return M
