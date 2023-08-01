local api = require("utils.api")

local path="plugins.dap"
local plugins = {
	"dap"
}
return api.plugin.construct(path, plugins)
