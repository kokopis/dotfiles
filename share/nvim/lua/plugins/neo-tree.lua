return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
      filesystem = {
        window = {
          mappings = {
            ["T"] = { "toggle_preview", config = { use_float = true } },
          }
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false
        }
      }
  },
}

