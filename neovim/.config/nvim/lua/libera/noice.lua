local M = {}

M.plugin_spec = {
  "folke/noice.nvim",
  config = function()
    require("noice").setup()
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  }
}

return M
