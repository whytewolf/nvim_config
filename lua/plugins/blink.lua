local cmp = require("blink.cmp")

cmp.build():wait(60000)
cmp.setup({
  keymap = { preset = 'default' },
  appearance = { nerd_font_variant = 'mono' },
  completion = { 
    accept = { 
      auto_brackets = { enabled = true }
    },
    documentation = { auto_show = true },
    menu = {
      draw = {
        columns = {
          { 'kind_icon'},
          { 'label' },
        },
      },
    },
  },
  snippets = { preset = 'luasnip' },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer', 'ripgrep', },
    providers = {
      ripgrep = {
        module = 'blink-ripgrep',
        name = 'Ripgrep',
        opts = { prefix_min_len = 5 },
      },
    },
  },
  fuzzy = { implementation = 'prefer_rust_with_warning' },
})
