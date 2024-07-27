local M = {}

M.kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
  String = "󰅳",
  Comment = "",
  Conditional = ""
}

M.plugin_spec = {
  "hrsh7th/nvim-cmp",
  config = function()
    vim.opt.completeopt = { "menu", "menuone", "noselect" }
    local cmp = require("cmp")
    cmp.setup({
      window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
          col_offset = -3,
          side_padding = 0
        }
      },
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          if vim_item.kind == "Error" then
            vim_item.kind = ""
            return vim_item
          end
          local source_name = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
            treesitter = "[Treesitter]"
          })[entry.source.name]
          vim_item.menu = "    (" .. (vim_item.kind or "") .. ")" .. " " .. source_name
          vim_item.kind = M.kind_icons[vim_item.kind]
          return vim_item
        end
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true })
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end
      },
      sources = {
        { name = "buffer" },
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "treesitter" }
      }
    })

    -- Autopairs integration
    local is_autopairs_present, cmp_autopairs = pcall(require ,"nvim-autopairs.completion.cmp")
    if is_autopairs_present then
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
  dependencies = {
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "ray-x/cmp-treesitter",
    "saadparwaiz1/cmp_luasnip"
  },
}

return M
