return {
  "neo-tree.nvim",
  enabled = true,
  opts = {
    reveal_force_cwd = true,
    auto_clean_after_session_restore = true,
    window = {
      width = 40,
    },
    close_if_last_window = true,
    filesystem = {
      bind_to_cwd = true;
      filtered_items = {
        visible = true,
        hide_hidden = false,
      },
      follow_current_file = {
        enabled = true,
      },
    },
    buffers = {
      follow_current_file = {
        enabled = true,
      },
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.cmd("setlocal rnu")
        end,
      }
    }
  }
}
