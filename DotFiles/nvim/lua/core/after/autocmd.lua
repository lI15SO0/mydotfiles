local options = require("core.options")

-- auto save buffer
if options.auto_save then
	vim.api.nvim_create_autocmd({"CursorLeave", "TextChanged"}, {
		pattern = { "*" },
		command = "silent! wall",
		nested = true,
	})
end

-- auto restore cursor position
if options.auto_restore_cursor_position then
	vim.api.nvim_create_autocmd({"BufReadPost"}, {
		pattern = { "*" },
		callback = function ()
			if vim.fn.line("'\'") > 0 and vim.fn.line("'\'") <= vim.fn.line("$") then
				vim.fn.setpos(".", vim.fn.getpos("'\'"))

				vim.cmd("silent! foldopen")
			end
		end,
	})
end


-- Chreate: spellsitter
local my_augroup = vim.api.nvim_create_augroup("my_augroup", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua", "c", "rs", "cpp", "rust", "go" },
  command = "setlocal nospell",
  group = my_augroup,
})
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*", -- disable spellchecking in the embeded terminal
  command = "setlocal nospell",
  group = my_augroup,
})
