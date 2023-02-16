-- https://githuloadb.com/rcarriga/nvim-notify

local api = require("utils.api")
local options = require("core.options")
local public = require("utils.public")
local icons = public.get_icons("diagnostic", true)

local M = {
	requires = {
		"notify"
	}
}

function M.register_key()
	api.map.bulk_regist({
		{
			mode = {"n"},
			key = "<leader>fn",
			fn = function ()
				require("telescope").extensions.notify.notify()
			end,
			options = { silent = true },
			description = "Show notices history"
		},
	})
end

function M.before()
	M.register_key()
end

function M.load()
	local notify_options = {
		stages = 'fade_in_slide_out',
		timeout = 3000,
		fps = 60,
		icons = {
			ERROR = icons.Error,
			WARN = icons.Warn,
			INFO = icons.info,
		},
	}

	M.notify.setup(notify_options)

	vim.notify = M.notify
end

function M.after() end

return M
