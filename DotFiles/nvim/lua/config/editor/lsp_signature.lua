-- https://github.com/ray-x/lsp_signature.nvim

local options = require("core.options")

local M = {
	requires = {
		'lsp_signature',
	}
}

function M.before()
	M.cfg = {
		bind = true,
        -- 边框样式
        handler_opts = {
            -- double、rounded、single、shadow、none
            border = options.none
        },
        -- 自动触发
        floating_window = true,
        -- 绑定按键
        toggle_key = "<C-j>",
        -- 虚拟提示关闭
        hint_enable = true,
        -- 正在输入的参数将如何突出显示
        hi_parameter = "LspSignatureActiveParameter",
	}
end

function M.load()
	M.lsp_signature.setup(M.cfg)
end

function M.after()
end

return M


 

