-- https://github.com/mfussenegger/nvim-dap

local api = require("utils.api")

local M = {
    requires = {
        "dap",
    },
}

function M.before()
    M.register_key()
end

function M.load()
    local configurations_dir_path = "config.dap.dap_configurations"

    local require_file_tbl = api.path.get_importable_subfiles(configurations_dir_path)

    for _, require_file in ipairs(require_file_tbl) do
        local dap_config = require(require_file)
        M.dap.adapters = vim.tbl_deep_extend("force", M.dap.adapters, dap_config.adapters)
        M.dap.configurations = vim.tbl_deep_extend("force", M.dap.configurations, dap_config.configurations)
    end
end

function M.after() end

function M.register_key()
    api.map.bulk_regist({
        {
            mode = { "n" },
            key = "<leader>db",
            fn = function()
                require("dap").toggle_breakpoint()
            end,
            options = { silent = true },
            description = "Mark or delete breakpoints",
        },
        {
            mode = { "n" },
            key = "<leader>dc",
            fn = function()
                require("dap").clear_breakpoints()
            end,
            options = { silent = true },
            description = "Clear breakpoints in the current buffer",
        },
        {
            mode = { "n" },
            key = "<F5>",
            fn = function()
                require("dap").continue()
            end,
            options = { silent = true },
            description = "Enable debugging or jump to the next breakpoint",
        },
        {
            mode = { "n" },
            key = "<F6>",
            fn = function()
                require("dap").step_into()
            end,
            options = { silent = true },
            description = "Step into",
        },
        {
            mode = { "n" },
            key = "<F7>",
            fn = function()
                ---@diagnostic disable-next-line: missing-parameter
                require("dap").step_over()
            end,
            options = { silent = true },
            description = "Step over",
        },
        {
            mode = { "n" },
            key = "<F8>",
            fn = function()
                require("dap").step_out()
            end,
            options = { silent = true },
            description = "Step out",
        },
        {
            mode = { "n" },
            key = "<F9>",
            fn = function()
                require("dap").run_last()
            end,
            options = { silent = true },
            description = "Rerun debug",
        },
        {
            mode = { "n" },
            key = "<F10>",
            fn = function()
                require("dap").terminate()
            end,
            options = { silent = true },
            description = "Close debug",
        },
    })
end

return M
