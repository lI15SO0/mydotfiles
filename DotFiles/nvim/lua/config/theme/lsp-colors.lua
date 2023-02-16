-- https://github.com/folke/lsp-colors.nvim

local options = require("core.options")
local M = {
	requires = {
		"lsp-colors",
	}
}

function M.before() end

function M.load()
	M.lsp_colors.setup {
		Error = options.color.Error,
		Warning = options.color.Warning,
		Information = options.color.Information,
		Hint = options.color.Hint,
	}
end

function M.after() end

return M
