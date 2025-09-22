return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          win = {
            list = {
              keys = {
                ["t"] = "tab",
                ["v"] = "vsplit",
                ["s"] = "split",
                ["q"] = "close",
                ["a"] = "add",
                ["r"] = "rename",
                ["d"] = "delete",
                ["y"] = "copy_path",
                ["Y"] = "copy_absolute_path",
                ["."] = "toggle_hidden",
                ["R"] = "refresh",
              },
            },
          },
        },
      },
    },
  },
}
