-- https://github.com/akinsho/bufferline.nvim

local api = require("utils.api")

local M = {
	requires = {
		"bufferline"
	}
}

function M.before()
	api.map.bulk_regist({
		{
			mode = {'n'},
			key = "<leader>bh",
			fn = "<cmd>BufferLineCloseLeft<CR>",
			options = {silent = true},
			description = "Close all left tab",
		},
		{
			mode = {'n'},
			key = "<leader>bl",
			fn = "<cmd>BufferLineCloseRight<CR>",
			options = {silent = true},
			description = "Close all right tab",
		},
	})
end

function M.load()
	M.bufferline.setup(
		{
			options = {
				-- 为每个 buffer 都配置一个序数
				numbers = "none",
				-- 使用内置 LSP 进行诊断
				diagnostics = "nvim_lsp",
				-- 不建议更改图标
				-- indicator_icon = "▎",
				buffer_close_icon = "",
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				-- 分割符样式："slant" | "thick" | "thin"
				-- 如果是透明背景，不推荐使用 slant
				separator_style = "slant",
				-- 左侧让出 nvim-tree 的位置
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "aerial",
						text = "Outline Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "undotree",
						text = "Undo Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "dbui",
						text = "Database Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "spectre_panel",
						text = "Project Blurry Search",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "toggleterm",
						text = "Integrated Terminal",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "FTerm",
						text = "Integrated Terminal",
						highlight = "Directory",
						text_align = "center",
					},
				},
				-- 显示 LSP 报错图标
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " " or (e == "warning" and " " or "")
						s = s .. n .. sym
					end
					return s
				end
			}
		}
	)

end

function M.after() end

return M
