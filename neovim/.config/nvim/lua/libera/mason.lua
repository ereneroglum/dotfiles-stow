local M = {}

M.plugin_spec = {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
}

return M
