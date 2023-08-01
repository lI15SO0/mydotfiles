-- https://githuloadb.com/rcarriga/nvim-notify

local options = require("core.options")
local public = require("utils.public")
local icons = public.get_icons("diagnostic", true)

return {
	"rcarriga/nvim-notify",
	config = function()

		local notify = require("notify")
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
		notify.setup(notify_options)
		vim.notify = notify
	end
}
