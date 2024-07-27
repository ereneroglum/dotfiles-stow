local M = {}

M.plugin_spec = {
  "numToStr/Comment.nvim",
   config = function()
     require('Comment').setup()
   end
}

return M
