local nioce = {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
  },
  dependencies ={
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_dcumentation"] = true,
        },
        hover = {
          enabled = false
        },
        signature = {
          enabled = false
        }
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      }
    })
  end,
}


return nioce
