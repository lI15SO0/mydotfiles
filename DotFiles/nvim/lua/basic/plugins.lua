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

			-- nvim-tree
			use {
				"kyazdani42/nvim-tree.lua",
				requires = {
						"kyazdani42/nvim-web-devicons"
				},
				config = function()
					require("conf.nvim-tree")
				end
			}

			-- 顶栏
			use {
				"akinsho/bufferline.nvim",
				requires = {
						"famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
				},
				config = function()
					require("conf.bufferline")
				end
			}

			-- 开屏界面
			use {
				'goolord/alpha-nvim',
				config = function()
					require("conf.alpha")
				end
			}

			-- 彩色括号
			use {
				'luochen1990/rainbow',
			}

			-- 底栏
			use {
				"windwp/windline.nvim",
				config = function()
					require("conf.windline")
				end
			}

		    -- 平滑翻页
			use {
				'psliwka/vim-smoothie',
				config = function()
					require("conf.vim-smoothie")
				end
			}

			-- 显示缩进线
			use {
				"lukas-reineke/indent-blankline.nvim",
				config = function()
					require("conf.indent-blankline")
				end
			}

			-- 搜索时显示条目
			use {
				"kevinhwang91/nvim-hlslens",
				config = function()
					require("conf.nvim-hlslens")
				end
			}

			-- 滚动条
			use {
				"petertriho/nvim-scrollbar",
				config = function()
					require("conf.nvim-scrollbar")
				end
			}

			-- 颜色显示
			use {
				"norcalli/nvim-colorizer.lua",
				config = function()
					require("conf.nvim-colorizer")
				end
			}

			-- 美化通知
			use {
				"rcarriga/nvim-notify",
				config = function()
					require("conf.nvim-notify")
				end
			}

			-- To-Do 样式
			use {
				"folke/todo-comments.nvim",
				config = function()
					require("conf.todo-comments")
				end
			}

			-- 大纲
			use {
				"stevearc/aerial.nvim",
				config = function()
					require("conf.aerial_nvim")
				end
			}

			-- 显示光标下相同词汇
			use {
				"RRethy/vim-illuminate",
				config = function()
					require("conf.vim-illuminate")
				end
			}

			-- 状态栏 git 信息
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

			-- 快速更改单词
			use {
				"AndrewRadev/switch.vim",
				config = function()
			require("conf.switch")
				end
			}

			-- 拼写检查
			use {
				"lewis6991/spellsitter.nvim",
				config = function()
					require("conf.spellsitter")
				end
			}

			-- 自动保存
			use {
				"Pocco81/AutoSave.nvim",
				config = function()
					require("conf.AutoSave")
				end
			}

			-- 自动恢复光标位置
			use {
				"ethanholz/nvim-lastplace",
				config = function()
			require("conf.nvim-lastplace")
				end
			}

			-- 保存重做
			use {
				"mbbill/undotree",
				config = function()
					require("conf.undotree")
				end
			}

			-- 浮动终端
			use {
				'voldikss/vim-floaterm', -- 浮动终端
				config = function()
					require("conf.vim-floaterm")
				end
			}

			--[[
			use {
				"folke/which-key.nvim",
				config = function()
					require("conf.which-key")
				end
			}

			-- 自动会话管理
			use {
				"rmagatti/auto-session",
				config = function()
					require("conf.auto-session")
				end
			}
			]]

			-- 单词跳转
			use {
				'phaazon/hop.nvim',
				branch = 'v1', -- optional but strongly recommended
				config = function()
					require("conf.hop")
				end
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
				config = function()
					require("conf.nvim-lspconfig")
				end
			}

			-- lsp-server 安装工具
			use {
				"williamboman/nvim-lsp-installer",
				config = function()
					require("conf.nvim-lsp-installer")
				end
			}

			-- 更好的 lsp 提示
			use {
				"tami5/lspsaga.nvim",
				config = function()
					require("conf.lspsaga")
				end
			}

			-- 右下角的 lsp 加载进度
			use {

				"j-hui/fidget.nvim",
				config = function()
					require("conf.fidget")
				end
			}

			-- 查看函数签名
			use {
				"ray-x/lsp_signature.nvim",
				config = function()
					require("conf.lsp_signature")
				end
			}

			-- 小灯炮
			use {
				"kosayoda/nvim-lightbulb",
				config = function()
					require("conf.nvim-lightbulb")
				end
			}

			--[[
			-- 外置 lint
			use {
				"mfussenegger/nvim-lint",
				config = function()
				end
			}
			]]

			-- 人工智能代码补全
			use {
				"github/copilot.vim",
				config = function()
					require("conf.copilot")
				end
			}

			-- 代码格式化
			use {
				"sbdchd/neoformat",
				config = function()
					require("conf.neoformat")
				end
			}

			-- 让不支持 lsp 的诊断信息的主题支持
			use {
				"folke/lsp-colors.nvim",
				config = function()
					require("conf.lsp-colors")
				end
			}

			-- Vista Tags
			use {
				"liuchengxu/vista.vim",
				config = function()
					require("conf.vista")
				end
			}

			-- 彩虹括号
			use {
				"p00f/nvim-ts-rainbow",
				config = function()
				end
			}

		    -- 代码补全
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

			-- 全局替换
			use {
				"nvim-pack/nvim-spectre",
				requires = {
					"nvim-lua/plenary.nvim", -- Lua 开发模块
				},
				config = function()
					require("conf.nvim-spectre")
				end
			}


			-- 包裹修改
			use {
				"ur4ltz/surround.nvim",
				config = function()
						require("conf.surround")
				end
			}

        end,

        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            },
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
