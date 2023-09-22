local M = {}

M.plugin_spec = {
  "Mofiqul/vscode.nvim",
  config = function()
    vim.cmd("colorscheme vscode")
  end
}

return M
