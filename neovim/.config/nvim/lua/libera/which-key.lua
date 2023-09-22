local M = {}

function M.config()

end

M.plugin_spec = {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup()
  end
}

return M
