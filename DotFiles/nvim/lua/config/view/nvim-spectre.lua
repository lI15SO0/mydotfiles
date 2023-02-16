-- https://github.com/nvim-pack/nvim-spectre

local api = require("utils.api")

local M = {
	requires = {
		"spectre",
	}
}

function M.before()
	api.map.bulk_regist({
		{
			mode = {'n'},
			key = '<leader>rp',
			fn = function ()
				require("spectre").open()
			end,
			options = {silent = true},
			description = 'global replace',
		},
		{
			mode = {'n'},
			key = '<leader>rf',
			fn = function ()
				require("spectre").spectre.open_file_search()
			end ,
			options = {silent = true},
			description = 'current file replace',
		},
		{
			mode = {'n'},
			key = '<leader>rw',
			fn = function() 
				require('spectre').open_visual({select_word=true})
			end,
			options = {silent = true},
			description = 'selected replace',
		},
	})
end

function M.load()
	M.spectre.setup(
		{
			mapping = {
				-- 删除选中
				["toggle_line"] = {
					map = "dd",
					cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
					desc = "toggle current item"
				},
				-- 前往文件
				["enter_file"] = {
					map = "<CR>",
					cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
					desc = "goto current file"
				},
				-- 查看菜单（忽略大小写、忽略隐藏文件）
				["show_option_menu"] = {
					map = "<leader>o",
					cmd = "<cmd>lua require('spectre').show_options()<CR>",
					desc = "show option"
				},
				-- 开始替换
				["run_replace"] = {
					map = "<leader>r",
					cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
					desc = "replace all"
				},
				-- 显示差异
				["change_view_mode"] = {
					map = "<leader>v",
					cmd = "<cmd>lua require('spectre').change_view()<CR>",
					desc = "change result view mode"
				}
			}
		}
	)
end

function M.after()
end

return M
