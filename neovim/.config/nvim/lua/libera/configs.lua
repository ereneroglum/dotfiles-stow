local M = {}

function M.setup()
  -- Skip checking for loaded providers
  vim.g.loaded_python3_provider = 0
  vim.g.loaded_ruby_provider = 0
  vim.g.loaded_node_provider = 0
  vim.g.loaded_perl_provider = 0

  -- Show line numbers
  vim.opt.number = true

  -- Show some empty characters
  vim.opt.list = true
  vim.opt.listchars:append("space:·")

  -- Enable mouse support
  vim.opt.mouse = "a"

  -- Set folding
  vim.opt.foldlevel = 7

  -- Set expandtab
  vim.opt.expandtab = true

  -- Set colorcolumn
  vim.opt.colorcolumn = "80"
end

return M
