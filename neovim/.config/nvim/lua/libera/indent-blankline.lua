local M = {}

M.plugin_spec = {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("ibl").setup()
  end
}

return M
