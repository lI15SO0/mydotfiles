-- My Settings

-- ####################### SYS PART #########################
-- 设定各种文本的字符编码
vim.o.encoding = "utf-8"
-- 自动重载
vim.o.autoread = true
-- 使用标题
vim.o.title = true
-- 是否开启备份文件
vim.o.backup = false
-- 是否开启交换文件
vim.o.swapfile = false
-- 是否开启 xterm 兼容的终端 24 位色彩支持
vim.o.termguicolors = true
-- 设定在无操作时，交换文件刷写到磁盘的等待毫秒数（默认为 4000）
vim.o.updatetime = 10
-- 设定等待按键时长的毫秒数
vim.o.timeoutlen = 500
-- 是否允许缓冲区未保存时就切换
vim.o.hidden = true
-- 鼠标支持
--vim.o.mouse = "a"
-- 是否启用系统剪切板
vim.o.clipboard = "unnamedplus"
-- 是否开启命令行补全
vim.o.wildmenu = true
-- 是否在搜索时忽略大小写
vim.o.ignorecase = true
-- 是否开启在搜索时如果有大写字母，则关闭忽略大小写的选项
vim.o.smartcase = true
-- 是否开启单词拼写检查
vim.o.spell = true
-- 设定单词拼写检查的语言
vim.o.spelllang = "en_us,cjk"


-- ####################### UI PART #########################
-- 是否高亮当前文本行
vim.o.cursorline = true
vim.o.cursorcolumn = true
-- 显示绝对行号
vim.o.number = true
-- 是否显示相对行号
vim.o.relativenumber = true
-- 是否在屏幕最后一行显示命令
vim.o.showcmd = true
-- 设定光标上下两侧最少保留的屏幕行数
vim.o.scrolloff = 15
-- 是否开启语法高亮
vim.o.syntax = "enable"
-- 是否特殊显示空格等字符
vim.o.list = true
-- 是否开启自动缩进
vim.o.autoindent = true
-- 设定自动缩进的策略为 plugin
vim.o.filetype = "plugin"
-- 是否开启高亮搜索
vim.o.hlsearch = true
-- 是否在插入括号时短暂跳转到另一半括号上
vim.o.showmatch = true
-- 是否开启代码折叠
vim.o.foldenable = true
-- 指定代码折叠的策略是按照缩进进行的
vim.o.foldmethod = "indent"
-- 指定代码折叠的最高层级为 100
vim.o.foldlevel = 100
-- 指定 tab 的长度
vim.o.tabstop = 4
vim.bo.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.smarttab = true
vim.o.shiftround = true
vim.o.list = true
-- 设置空格和回车的样式
--vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")

vim.o.termguicolors = true
vim.cmd([[color darkblue]])
vim.cmd([[highlight Normal guibg=None ctermbg=None]])

