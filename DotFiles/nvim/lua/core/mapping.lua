local api = require('utils.api')

local mapping = {}

api.map.bulk_regist({
	{
		mode = {'n'},
		key = '<space>',
		fn = ':',
		options = {silent = true},
		description = 'CAD style cmd key start',
	},
	{
		mode = {'c'},
		key = '<space><space>',
		fn = '<enter>',
		options = {silent = true},
		description = 'CAD style cmd key end',
	},
	{
		mode = {'n'},
		key = 'd',
		fn = 'dd',
		options = {silent = true},
		description = 'make delete line only one click',
	},
	{
		mode = {'n'},
		key = 'y',
		fn = 'yy',
		options = {silent = true},
		description = 'make paste only one click',
	},
	{
		mode = {'n'},
		key = 'U',
		fn = ':redo<CR>',
		options = {silent = true},
		description = 'Redo key bind',
	},
	{
		mode = {'n', 'v'},
		key = 'H',
		fn = '^',
		options = {silent = true},
		description = 'Make capitalization h to line start',
	},
	{
		mode = {'n', 'v'},
		key = 'L',
		fn = '$',
		options = {silent = true},
		description = 'Make capitalization h to line end',
	},
	{
		mode = {'v'},
		key = '<',
		fn = '<gv',
		options = {silent = true},
		description = 'Indent reduce',
	},
	{
		mode = {'v'},
		key = '>',
		fn = '>gv',
		options = {silent = true},
		description = 'Indent increase',
	},
	{
		mode = {'i'},
		key = '<A-k>',
		fn = '<up>',
		options = {silent = true},
		description = 'Insert mode UP',
	},
	{
		mode = {'i'},
		key = '<A-j>',
		fn = '<down>',
		options = {silent = true},
		description = 'Insert mode down',
	},
	{
		mode = {'i'},
		key = '<A-h>',
		fn = '<left>',
		options = {silent = true},
		description = 'Insert mode left',
	},
	{
		mode = {'i'},
		key = '<A-l>',
		fn = '<right>',
		options = {silent = true},
		description = 'Insert mode right',
	},
	{
		mode = {'n'},
		key = '<C-h>',
		fn = '<C-w>h',
		options = {silent = true},
		description = 'Window focus move left',
	},
	{
		mode = {'n'},
		key = '<C-j>',
		fn = '<C-w>j',
		options = {silent = true},
		description = 'Window focus move down',
	},
	{
		mode = {'n'},
		key = '<C-k>',
		fn = '<C-w>k',
		options = {silent = true},
		description = 'Window focus move up',
	},
	{
		mode = {'n'},
		key = '<C-l>',
		fn = '<C-w>l',
		options = {silent = true},
		description = 'Window focus move right',
	},
	{
		mode = {'n'},
		key = '<C-up>',
		fn = '<cmd>res +1<CR>',
		options = {silent = true},
		description = 'Window size horizontal decrease',
	},
	{
		mode = {'n'},
		key = '<C-down>',
		fn = '<cmd>res -1<CR>',
		options = {silent = true},
		description = 'Window size horizontal decrease',
	},
	{
		mode = {'n'},
		key = '<C-left>',
		fn = '<cmd>vertical resize-1<CR>',
		options = {silent = true},
		description = 'Window size vertical decrease',
	},
	{
		mode = {'n'},
		key = '<C-right>',
		fn = '<cmd>vertical resize+1<CR>',
		options = {silent = true},
		description = 'Window size vertical increase',
	},
	{
		mode = {'n', 'i'},
		key = '<C-c>',
		fn = '<cmd>bp | bd #<CR>',
		options = {silent = true},
		description = 'close this tab'
	},
	{
		mode = {'n'},
		key = '<C-z>',
		fn = ':bp<CR>',
		options = {silent = true},
		description = 'Prev buffer',
	},
	{
		mode = {'n'},
		key = '<C-x>',
		fn = ':bn<CR>',
		options = {silent = true},
		description = 'Next buffer',
	},
	{
		mode = {'n'},
		key = '<A-c>',
		fn = ':bd<CR>',
		options = {silent = true},
		description = 'Close buffer',
	},
	{
		mode = {'n'},
		key = '<ESC>',
		fn = ':nohl<CR>',
		options = {silent = true},
		description = 'Make high light close',
	},
	{
		mode = {'n'},
		key = '<leader>x',
		fn = '<cmd>set spell!<CR>',
		options = {silent = true},
		description = 'Toggle spell check',
	},
})

return mapping