return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      -- Close nvim-tree when opening a file
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },

      sort = {
        sorter = "case_sensitive",
      },

      renderer = {
        group_empty = true,
      },

      filters = {
        dotfiles = true,
      },
    })
  end,
}

