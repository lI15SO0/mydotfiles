-- https://github.com/neovim/nvim-lspconfig

local api = require("utils.api")
local aid_lspconfig = require("utils.aid.lspconfig")

local M = {
    requires = {
        "lspconfig",
        "nvim-navic",
        "mason-lspconfig",
    },
}

function M.before()
    M.register_key()
end

function M.load()
    aid_lspconfig.entry()

    local configurations_dir_path = "config/lsp/server_configurations/"

    for _, server_name in ipairs(M.mason_lspconfig.get_installed_servers()) do
        local require_path = string.format("%s%s", configurations_dir_path, server_name)

        local ok, settings = pcall(require, require_path)

        if not ok then
            settings = {}
        end

        settings.capabilities = aid_lspconfig.get_capabilities()
        settings.handlers = aid_lspconfig.get_headlers(settings)

        settings.on_attach = function(client, bufnr)
            M.nvim_navic.attach(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
            -- close semantic tokens
            client.server_capabilities.semanticTokensProvider = nil
        end

        M.lspconfig[server_name].setup(settings)
    end
end

function M.after() end

function M.register_key()
    api.map.bulk_regist({
        {
            mode = { "n" },
            key = "<leader>ca",
            fn = vim.lsp.buf.code_action,
            options = { silent = true },
            description = "Show code action",
        },
        {
            mode = { "n" },
            key = "<leader>cn",
            fn = vim.lsp.buf.rename,
            options = { silent = true },
            description = "Variable renaming",
        },
        {
            mode = { "n" },
            key = "<leader>cf",
            fn = function()
                vim.lsp.buf.format({ async = true })
            end,
            options = { silent = true },
            description = "Format buffer",
        },
        {
            mode = { "n" },
            key = "gh",
            fn = vim.lsp.buf.hover,
            options = { silent = true },
            description = "Show help information",
        },
        {
            mode = { "n" },
            key = "gr",
            fn = function()
                require("telescope.builtin").lsp_references()
            end,
            options = { silent = true },
            description = "Go to references",
        },
        {
            mode = { "n" },
            key = "gi",
            fn = function()
                require("telescope.builtin").lsp_implementations()
            end,
            options = { silent = true },

            description = "Go to implementations",
        },
        {
            mode = { "n" },
            key = "gd",
            fn = function()
                require("telescope.builtin").lsp_definitions()
            end,
            options = { silent = true },
            description = "Go to definitions",
        },
        {
            mode = { "n" },
            key = "gD",
            fn = function()
                require("telescope.builtin").lsp_type_definitions()
            end,
            options = { silent = true },
            description = "Go to type definitions",
        },
        {
            mode = { "n" },
            key = "go",
            fn = aid_lspconfig.diagnostic_open_float,
            options = { silent = true },
            description = "Show Current Diagnostics",
        },
        {
            mode = { "n" },
            key = "gO",
            fn = function()
                require("telescope.builtin").diagnostics()
            end,
            options = { silent = true },
            description = "Show Workspace Diagnostics",
        },
        {
            mode = { "n" },
            key = "[g",
            fn = aid_lspconfig.goto_prev_diagnostic,
            options = { silent = true },
            description = "Jump to prev diagnostic",
        },
        {
            mode = { "n" },
            key = "]g",
            fn = aid_lspconfig.goto_next_diagnostic,
            options = { silent = true },
            description = "Jump to next diagnostic",
        },
        {
            mode = { "i" },
            key = "<c-j>",
            fn = aid_lspconfig.sigature_help,
            options = { silent = true },
            description = "Toggle signature help",
        },
        {
            mode = { "i", "n" },
            key = "<c-b>",
            fn = aid_lspconfig.scroll_to_up,
            options = { silent = true },
            description = "Scroll up floating window",
        },
        {
            mode = { "i", "n" },
            key = "<c-f>",
            fn = aid_lspconfig.scroll_to_down,
            options = { silent = true },
            description = "Scroll down floating window",
        },
        {
            mode = { "i", "n" },
            key = "<c-]>",
            fn = aid_lspconfig.focus_float_window(),
            options = { silent = true },
            description = "Focus floating window",
        },
    })
end

return M

