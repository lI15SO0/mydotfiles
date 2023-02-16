--https://github.com/glepnir/lspsaga.nvim

local api = require("utils.api")
local icons = require("utils.public.icons")
local options = require("core.options")

local M = {
	lspsaga = require("lspsaga"),
	actions = require("lspsaga.action")
}

function M.before()
	api.map.register({
		{
		mode = {'n'},
		key = '<leader>ca',
		fn = "<cmd>Lspsaga code_actions<CR>",
		options = {silent = true},
		description = 'Show code actions',
		},
		{
		mode = {'n'},
		key = '<leader>cn',
		fn = "<cmd>Lspsaga rename<CR>",
		options = {silent = true},
		description = 'rename all symbol',
		},
		{
		mode = {'n'},
		key = 'gh',
		fn = "<cmd>Lspsaga hover_doc<CR>",
		options = {silent = true},
		description = 'Show help information page',
		},
		{
		mode = {'n'},
		key = 'g[',
		fn = "<cmd>Lspsaga diagnostic_jump_prev<CR>",
		options = {silent = true},
		description = 'prev problem',
		},
		{
		mode = {'n'},
		key = 'g]',
		fn = "<cmd>Lspsaga diagnostic_jump_next<CR>",
		options = {silent = true},
		description = 'next problem',
		},
		{
		mode = {'n'},
		key = '<C-,>',
		fn = M.actions.smart_scroll_with_saga(-1),
		options = {silent = true},
		description = 'Show code actions',
		},
		{
		mode = {'n'},
		key = '<C-.>',
		fn = M.actions.smart_scroll_with_saga(1),
		options = {silent = true},
		description = 'Show code actions',
		},
	})
end

function M.load()
	M.lspsaga.setup(
		{
			-- 提示边框样式：round、single、double
			border_style = options.border,
			error_sign = icons.diagnostic.Error,
			warn_sign = icons.diagnostic.Warn,
			hint_sign = icons.diagnostic.Hint,
			infor_sign = icons.diagnostic.Info,
			diagnostic_header_icon = "",
			-- 正在写入的行提示
			code_action_icon = "",
			code_action_prompt = {
				-- 显示写入行提示
				-- 如果为 true ，则写代码时会在左侧行号栏中显示你所定义的图标
				enable = false,
				sign = true,
				sign_priority = 40,
				virtual_text = true
			},
			-- 快捷键配置
			code_action_keys = {
				quit = "<Esc>",
				exec = "<CR>"
			},
			rename_action_keys = {
				quit = "<Esc>",
				exec = "<CR>"
			}
		}
	)
end

function M.after() end

return M
