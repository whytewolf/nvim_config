return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    dependencies = {
      'copilotlsp-nvim/copilot-lsp',
    },
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'fang2hou/blink-copilot',
      'mikavilpas/blink-ripgrep.nvim',
      'L3MON4D3/LuaSnip',
      'moyiz/blink-emoji.nvim',
    },
    version = '1.*',
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        nerd_font_variant = 'mono',
      },
      completion = {
        accept = {
          auto_brackets = { enabled = true },
        },
        documentation = { auto_show = true },
        menu = {
          draw = {
            columns = {
              { 'kind_icon' },
              { 'label' },
            },
          },
        },
      },
      snippets = { preset = 'luasnip' },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'ripgrep', 'emoji', 'copilot' },
        providers = {
          copilot = {
            name = 'copilot',
            module = 'blink-copilot',
            score_offset = 100,
            async = true,
          },
          ripgrep = {
            module = 'blink-ripgrep',
            name = 'Ripgrep',
            opts = {
              prefix_min_len = 5,
            },
          },
          emoji = {
            module = 'blink-emoji',
            name = 'Emoji',
            score_offset = 15,
            opts = {
              trigger = function()
                return { ':' }
              end,
            },
          },
        },
      },
      fuzzy = { implementation = 'prefer_rust_with_warning' },
    },
    opts_extend = { 'sources.default' },
  },
}
