---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim
local packer = require("packer")
packer.startup(
    {
        -- 所有插件的安装都书写在 function 中
        function()
            -- 包管理器
            use {
                "wbthomason/packer.nvim"
            }

			--[[ Nerd Tree
			use {
				"preservim/nerdtree",
				"Xuyuanp/nerdtree-git-plugin",
			}
			]]
			-- nvim-tree
			use {
				"kyazdani42/nvim-tree.lua",
				requires = {
						-- 依赖一个图标插件
						"kyazdani42/nvim-web-devicons"
				},
				config = function()
						-- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
						require("conf.nvim-tree")
				end
			}

			-- 视觉
			use {
				'luochen1990/rainbow', -- rainbow paies
				-- 'vim-airline/vim-airline', -- Air Line
				-- 'vim-airline/vim-airline-themes',
				"windwp/windline.nvim", -- Wind Line
				'psliwka/vim-smoothie', -- 平滑翻页
				"akinsho/bufferline.nvim", -- 顶栏
				"lukas-reineke/indent-blankline.nvim", -- 显示缩进线
				"kevinhwang91/nvim-hlslens", -- 搜索时显示条目
				"petertriho/nvim-scrollbar", -- 滚动条
				"norcalli/nvim-colorizer.lua", -- 颜色显示
				"rcarriga/nvim-notify", -- 美化通知
				"folke/todo-comments.nvim", -- To-Do 样式
				requires = {
						"famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
				},
			}
			-- 为了能让状态栏显示 git 信息，所以这个插件是必须的
			use {
				"lewis6991/gitsigns.nvim",
				requires = {
						-- 依赖于该插件（一款 Lua 开发使用的插件）
						"nvim-lua/plenary.nvim"
				},
				config = function()
						require("conf.gitsigns")
				end
			}

			-- 显示光标下相同词汇
			use {
				"RRethy/vim-illuminate",
			}
			
			use {
				"AndrewRadev/switch.vim", -- 快速更改单词
				"lewis6991/spellsitter.nvim", -- 拼写检查
				"Pocco81/AutoSave.nvim", -- 自动保存
				"ethanholz/nvim-lastplace", -- 自动恢复光标位置
				"mbbill/undotree", -- 保存重做
				'voldikss/vim-floaterm', -- 浮动终端
				-- "folke/which-key.nvim", --
				-- "rmagatti/auto-session", -- 自动会话管理
			}

			-- 模糊查找
			use {
				"nvim-telescope/telescope.nvim",
				requires = {
						"nvim-lua/plenary.nvim", -- Lua 开发模块
				},
				config = function()
						require("conf.telescope")
				end
			}

			-- LSP
			use {
				"neovim/nvim-lspconfig",
				"williamboman/nvim-lsp-installer",
				"tami5/lspsaga.nvim",
				
				"j-hui/fidget.nvim",
				"ray-x/lsp_signature.nvim",
				"kosayoda/nvim-lightbulb",
				-- "mfussenegger/nvim-lint",

				"github/copilot.vim",
				"sbdchd/neoformat",
				"folke/lsp-colors.nvim",
				"liuchengxu/vista.vim",
			}

			use {
				"hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
				requires = {
						{"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
						{"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
						{"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
						{"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
						{"hrsh7th/cmp-path"}, -- 路径补全
						{"hrsh7th/cmp-buffer"}, -- 缓冲区补全
						{"hrsh7th/cmp-cmdline"}, -- 命令补全
						{"f3fora/cmp-spell"}, -- 拼写建议
						{"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
						{"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
						{"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
				},
				config = function()
						require("conf.nvim-cmp")
				end
			}

			-- 语法高亮
			use {
				"nvim-treesitter/nvim-treesitter",
				run = {":TSupdate"},
			requires = {
						"p00f/nvim-ts-rainbow" -- 彩虹括号
				},
				config = function()
						require("conf.nvim-treesitter")
				end
			}

			-- 代码注释
			use {
				"numToStr/Comment.nvim",
				requires = {
						"JoosepAlviste/nvim-ts-context-commentstring"
				},
				config = function()
						require("conf.Comment")
				end
			}

			--[[
			-- 全局替换
			use {
				"nvim-pack/nvim-spectre",
				requires = {
						"nvim-lua/plenary.nvim", -- Lua 开发模块
						--"BurntSushi/ripgrep" -- 文字查找
				},
				config = function()
						require("co
    "tami5/lspsaga.nvim",nf.nvim-spectre")
				end
			}
			]]

			--[[
			-- 包裹修改
			use {
				"ur4ltz/surround.nvim",
				config = function()
						require("conf.surround")
				end
			}
			]]

        end,
        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            },

			require("conf.vim-illuminate"),

			-- require("conf.NERDTree"), -- Nerd Tree

			require("conf.windline"),
			require("conf.bufferline"),
			require("conf.indent-blankline"),
			require("conf.nvim-hlslens"),
			require("conf.nvim-scrollbar"),
			require("conf.nvim-colorizer"),
			require("conf.nvim-notify"),
			require("conf.todo-comments"),
			require("conf.vim-smoothie"),

			require("conf.switch"),
			require("conf.spellsitter"),
			require("conf.AutoSave"),
			require("conf.nvim-lastplace"),
			require("conf.undotree"),
			require("conf.vim-floaterm"),
			-- require("conf.which-key"),
			-- require("conf.auto-session"),

			-- LSP
			require("conf.nvim-lspconfig"),
			require("conf.nvim-lsp-installer"),
			require("conf.lspsaga"),

			require("conf.fidget"),
			require("conf.lsp_signature"),
			require("conf.nvim-lightbulb"),
			-- require("conf.nvim-lint"),
			
			require("conf.copilot"),
			require("conf.neoformat"),
			require("conf.lsp-colors"),
			require("conf.vista"),


			
		}
    }
)
-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
