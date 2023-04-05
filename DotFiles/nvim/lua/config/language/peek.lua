-- https://github.com/toppair/peek.nvim

local M = {
	requires = {
		"peek",
	}
}

function M.before()
	M.filetype = {
		"markdown",
		"md",
	}
end

function M.load()
	M.peek.setup({
		auto_load = true,
		close_on_bdelete = true,
		syntax = true,
		theme = 'dark',
		update_on_change = true,
		app = 'webview',
		filetype = M.filetype
	})
end

function M.after()
	vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
	vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
end

return M
