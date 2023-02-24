local aid_packer = require("utils.aid.packer")

local plugins = {}

plugins.basic = {
	{"wbthomason/packer.nvim"},
	{"nvim-lua/plenary.nvim", module = "plenary"},
	{"nvim-telescope/telescope.nvim"},
	{"rcarriga/nvim-notify"},
	{"nvim-treesitter/nvim-treesitter", module = "nvim-treesitter", run = {":TSUpdate"}},
	{"nvim-tree/nvim-web-devicons", module = "nvim-web-devicons"},
	{"williamboman/mason.nvim", after = { "nvim-notify" } },
}

plugins.theme = {
	{"folke/lsp-colors.nvim", after = { "mason.nvim" } }, -- lsp 主题强制支持
	{"navarasu/onedark.nvim"},
}

plugins.lsp = {
	{"williamboman/mason-lspconfig.nvim", after = { "mason.nvim" } }, -- lsp设置工具
	{"folke/neodev.nvim", after = { "mason-lspconfig.nvim" } }, -- neovim 开发，代码补全提供
	{"SmiteshP/nvim-navic", after = { "neodev.nvim" } }, -- 基于 lsp 的位置导航栏
	{"neovim/nvim-lspconfig", after = {"nvim-navic"} },
	{"kosayoda/nvim-lightbulb", after = {"nvim-lspconfig"} },
	{"liuchengxu/vista.vim", after = {"mason.nvim"} }, -- tags
	{"glepnir/lspsaga.nvim", branch = 'main'},
	{"j-hui/fidget.nvim", after = { "nvim-lspconfig" }}, -- 显示lsp进度
}

plugins.complete = {
	{"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
    { "rafamadriz/friendly-snippets", event = { "InsertEnter", "CmdlineEnter" } },
    { "hrsh7th/vim-vsnip", after = { "friendly-snippets" } },
    { "hrsh7th/nvim-cmp", after = { "vim-vsnip" } },
    { "hrsh7th/cmp-vsnip", after = { "nvim-cmp" } },
    { "hrsh7th/cmp-nvim-lsp", after = { "nvim-cmp" } },
    { "hrsh7th/cmp-buffer", after = { "nvim-cmp" } },
    { "hrsh7th/cmp-path", after = { "nvim-cmp" } },
    { "hrsh7th/cmp-cmdline", after = { "nvim-cmp" } },
	{"f3fora/cmp-spell", after = { "nvim-cmp" }}, -- 拼写建议
	{"lukas-reineke/cmp-under-comparator", after = { "nvim-cmp" }}, -- 让补全结果的排序更加智能
    { "kristijanhusak/vim-dadbod-completion", after = { "nvim-cmp" } },
}

plugins.dap = {
	{ "mfussenegger/nvim-dap", module = "dap" },
	{ "rcarriga/nvim-dap-ui", after = { "nvim-dap" } },
	{ "theHamsta/nvim-dap-virtual-text", after = { "nvim-dap" } },
}

plugins.editor = {
	-- {"ray-x/lsp_signature.nvim", after = {"mason.nvim"}},
	{"p00f/nvim-ts-rainbow"},
	{'psliwka/vim-smoothie'},
	{"kevinhwang91/nvim-hlslens"},
	{"folke/todo-comments.nvim"},
	{"AndrewRadev/switch.vim"},
	{"lewis6991/spellsitter.nvim"},
	{"ethanholz/nvim-lastplace"},
	{"mbbill/undotree"},
	{'phaazon/hop.nvim', branch = "v2"}, -- 快速跳转
	-- {"sbdchd/neoformat"}, -- 代码格式代
	{"numToStr/Comment.nvim"}, -- 快速注释
	{"JoosepAlviste/nvim-ts-context-commentstring"},
	{"ur4ltz/surround.nvim", event = { "BufRead", "BufNewFile" }}, -- 包裹修改
	{"RRethy/vim-illuminate", event = { "BufRead", "BufNewFile" }}, -- 高亮相同字符串
}

--[[
plugins.language = {
}
]]

plugins.tools = {
	{"Pocco81/auto-save.nvim"},
	{"norcalli/nvim-colorizer.lua"},
}

plugins.view = {
	{"goolord/alpha-nvim"},
	{"famiu/bufdelete.nvim"},
	{"akinsho/bufferline.nvim", events = { "BufNewFile", "BufRead", "TabEnter" }},
	{"windwp/windline.nvim"},
	{"nvim-tree/nvim-tree.lua", cmd = { "NvimTreeToggle", "NvimTreeFindFile" }},
	{"stevearc/aerial.nvim"}, -- 大纲
	{"lewis6991/gitsigns.nvim"}, -- 状态栏 git 信息
	{"numToStr/FTerm.nvim", module = "FTerm"},
	{"nvim-pack/nvim-spectre", module = "spectre"},
}

aid_packer.entry(plugins)

return plugins
