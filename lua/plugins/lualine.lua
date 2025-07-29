return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'AndreM222/copilot-lualine' },
  config = function()
    local ft = {
      'filetype',
      colored = true,
      icon_only = true,
    }

    local trouble = require 'trouble'
    local symbols = trouble.statusline {
      mode = 'lsp_document_symbols',
      groups = {},
      title = false,
      filter = { range = true },
      format = '{kind_icon}{symbol.name:Normal}',
      hl_group = 'lualine_c_normal',
    }
    local buffer_tabs = {
      'buffers',
      show_filename_only = true,
      hide_filename_extension = false,
      show_modified_status = true,
      mode = 2,
      use_mode_colors = true,

      symbols = {
        modified = '',
      },
    }
    local tabline_tabs = {
      'tabs',
      tab_max_length = 10,
      max_length = vim.o.columns / 3,
      mode = 2,
      path = 0,
      use_mode_colors = true,
      symbols = {
        modified = '',
      },
    }
    local copilot_line = {
      'copilot',
      symbols = {
        status = {
          icons = {
            enabled = ' ',
            sleep = ' ', -- auto-trigger disabled
            disabled = ' ',
            warning = ' ',
            unknown = ' ',
          },
          hl = {
            enabled = '#50FA7B',
            sleep = '#AEB7D0',
            disabled = '#6272A4',
            warning = '#FFB86C',
            unknown = '#FF5555',
          },
        },
        spinners = 'dots', -- has some premade spinners
        spinner_color = '#6272A4',
      },
      show_colors = false,
      show_loading = true,
    }
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'tokyonight',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
          refresh_time = 16,
          events = {
            'WinEnter',
            'BufEnter',
            'BufWritePost',
            'SessionLoadPost',
            'FileChangedShellPost',
            'VimResized',
            'Filetype',
            'CursorMoved',
            'CursorMovedI',
            'ModeChanged',
          },
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { symbols.get, cond = symbols.has } },
        lualine_x = { 'encoding', copilot_line, 'fileformat', ft },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = { 'filename' },
        lualine_z = { buffer_tabs },
      },
      winbar = {},
      inactive_winbar = {},
      extensions = { 'lazy', 'mason', 'nvim-dap-ui' },
    }
    vim.o.showtabline = 1
  end,
}
