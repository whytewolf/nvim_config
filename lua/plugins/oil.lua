return {
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
      columns = {
        'icon',
        'permissions',
        'size',
        'mtime',
      },
      buf_options = {
        buflisted = false,
        bufhidden = 'hide',
      },
      delete_to_trash = false,
      skip_confirm_for_simple_edits = false,
      prompt_save_on_select_new_entry = true,
      cleanup_delay_ms = 2000,
      lsp_file_methods = {
        enabled = true,
        timeout_ms = 1000,
        autosave_changes = true,
      },
      constain_cursor = 'editable',
      watch_for_changes = true,
      view_options = {
        show_hidden = true,
        case_insensitive = false,
        sort = {
          { 'type', 'asc' },
          { 'name', 'asc' },
        },
        highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
          return nil
        end,
      },
      extra_scp_args = {},
      git = {
        add = function(path)
          return false
        end,
        mv = function(src_path, dest_path)
          return false
        end,
        rm = function(path)
          return false
        end,
      },
      preview_win = {
        update_on_cursor_moved = true,
        preview_method = 'fast_scratch',
      },
      confirmation = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = 0.9,
        min_height = { 5, 0.1 },
        height = nil,
        border = nil,
        win_options = {
          winblend = 0,
        },
        progress = {
          max_width = 0.9,
          min_width = { 40, 0.4 },
          width = nil,
          max_height = { 10, 0.9 },
          min_height = { 5, 0.1 },
          height = nil,
          border = nil,
          minimizd_border = 'none',
          win_options = {
            winblend = 0,
          },
        },
        ssh = {
          border = nil,
        },
      },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
  },
}
