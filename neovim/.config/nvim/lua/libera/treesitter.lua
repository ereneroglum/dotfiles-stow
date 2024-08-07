local M = {}

M.plugin_spec = {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "cpp", "go", "haskell", "python", "rust" },
      sync_install = false,
      highlight = {
        enable = true
      }
    })

    --- Tree sitter folding
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  end
}

return M
