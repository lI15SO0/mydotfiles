-- https://github.com/hrsh7th/vim-vsnip

local api = require("utils.api")
local options = require("core.options")

local M = {}

M._viml = true

function M.before()
    M.register_key()
end

function M.load()
    vim.g.vsnip_snippet_dir = options.snippets_directory
    vim.g.vsnip_filetypes = {
        javascript = { "typescript" },
        typescript = { "javascript" },
        vue = { "javascript", "typescript" },
    }
end

function M.after() end

function M.register_key()
    api.map.bulk_regist({
        {
            mode = { "i", "s" },
            key = "<tab>",
            fn = function()
                return vim.api.nvim_eval("vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<tab>'")
            end,
            options = { silent = true, expr = true },
            description = "Jump to the next fragment placeholder",
        },
        {
            mode = { "i", "s" },
            key = "<s-tab>",
            fn = function()
                return vim.api.nvim_eval("vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<s-tab>'")
            end,
            options = { silent = true, expr = true },
            description = "Jump to the prev fragment placeholder",
        },
    })
end

return M

