-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

local options = require("core.options")

local M = {
    requires = {
        "mason",
        "mason-registry",
    },
}

M.installer_resources = {
    lsp = {
        "lua-language-server",
        "bash-language-server",
        "tailwindcss-language-server",
		"clangd",
		"taplo",
		"cmake-language-server",
		"rust-analyzer",
		"pyright",
    },
    dap = {
        "debugpy",
		"codelldb",
    },
    linter = {
        "pylint",
    },
    formatter = {
		"clang-format",
        "shfmt",
        "autopep8",
        "prettier",
        "stylua",
		"rustfmt",
    },
}

function M.before() end

function M.load()
    M.mason.setup({
        max_concurrent_installers = 20,
        ui = {
            border = options.float_border and "double" or "none",
            icons = {
                package_installed = "",
                package_pending = "",
                package_uninstalled = "",
            },
        },
        github = {
            download_url_template = options.download_source .. "%s/releases/download/%s/%s",
        },
    })
end

function M.after()
    local installed_resources = {}

    for _, resource_tbl in pairs(M.installer_resources) do
        for _, resource_name in pairs(resource_tbl) do
            if not M.mason_registry.is_installed(resource_name) then
                local ok, resource = pcall(M.mason_registry.get_package, resource_name)
                if ok then
                    resource:install()
                    table.insert(installed_resources, resource_name)
                else
                    vim.notify(string.format("Invalid resource name %s", resource_name), "ERROR", { title = "Mason" })
                end
            end
        end
    end

    if not vim.tbl_isempty(installed_resources) then
        vim.notify(
            string.format("Install resource: \n - %s", table.concat(installed_resources, "\n - ")),
            "INFO",
            { title = "Mason" }
        )
    end
end

return M