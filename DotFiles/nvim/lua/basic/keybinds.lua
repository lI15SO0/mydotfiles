-- leader 键设置为空格
vim.g.mapleader = "`"
-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 使用 <space> 来进行Command模式的交互
vim.keybinds.gmap("n", "<space>", ":", vim.keybinds.opts)
vim.keybinds.gmap("c", "<space><space>", "<enter>", vim.keybinds.opts)

-- 简化 dd 和 yy
vim.keybinds.gmap("n", "d", "dd", vim.keybinds.opts)
vim.keybinds.gmap("n", "y", "yy", vim.keybinds.opts)

-- 插入模下 erui 退出插入模式
vim.keybinds.gmap("i", "erui", "<Esc>", vim.keybinds.opts)

-- 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 使 Visual Mode 的缩进可憎连续
vim.keybinds.gmap("v", "<", "<gv", vim.keybinds.opts)
vim.keybinds.gmap("v", ">", ">gv", vim.keybinds.opts)

-- 插入模式下的上下左右移动
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)

-- 使用 Ctrl + {h,j,k,l} 来进行窗口的选择
vim.keybinds.gmap("n", "<C-h>", "<C-w>h", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-j>", "<C-w>j", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-k>", "<C-w>k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-l>", "<C-w>l", vim.keybinds.opts)

-- 修改分屏大小
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

-- 选择标签页
vim.keybinds.gmap("n", "<C-z>", ":bp<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-x>", ":bn<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-c>", ":bd<CR>", vim.keybinds.opts)

-- 正常模式下按 ESC 取消高亮显示
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查
vim.keybinds.gmap("n", "<leader>x", "<cmd>set spell!<CR>", vim.keybinds.opts)
