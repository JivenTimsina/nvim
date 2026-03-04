return {
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    lazy = false,
    priority = 1000,
    config = function()
      -- Nord now uses globals instead of a setup() call
      vim.g.nord_disable_background = false
      vim.g.nord_italic = true
      vim.g.nord_borders = false

      vim.cmd.colorscheme("nord")
			vim.g.nord_contrast = true
    end,
  },
}

