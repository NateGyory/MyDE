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
              },
            },
          },
        },
      },
    },
  },
}
