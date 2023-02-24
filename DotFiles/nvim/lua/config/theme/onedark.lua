-- https://github.com/navarasu/onedark.nvim
local options = require("core.options")

local M = {
	requires = {
		"onedark",
	}
}

function M.before()
end

function M.load()
	M.onedark.setup  {
		-- Main options --
		style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		transparent = options.transparent,  -- Show/hide background
		term_colors = true, -- Change terminal color as per the selected theme style
		ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
		cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu

		-- toggle theme style ---
		toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
		toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

		-- Change code style ---
		-- Options are italic, bold, underline, none
		-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
		code_style = {
			comments = 'italic',
			keywords = 'none',
			functions = 'none',
			strings = 'none',
			variables = 'bold'
		},

		-- Lualine options --
		lualine = {
			transparent = false, -- lualine center bar transparency
		},

		-- Custom Highlights --
		colors = {}, -- Override default colors
		highlights = {}, -- Override highlight groups

		-- Plugins Config --
		diagnostics = {
			darker = true, -- darker colors for diagnostic
			undercurl = true,   -- use undercurl instead of underline for diagnostics
			background = true,    -- use background color for virtual text
		},
	}
	M.onedark.load()
end

function M.after()
end

return M
