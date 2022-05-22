require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

vim.keybinds.gmap("n", "<leader>w", "<cmd>HopWord<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>e", "<cmd>HopChar1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>p", "<cmd>HopPattern<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>l", "<cmd>HopLineStart<CR>", vim.keybinds.opts)
