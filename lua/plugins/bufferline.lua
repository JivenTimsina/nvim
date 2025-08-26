return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		'catppuccin/nvim'
	},
	config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold,
        },
		offsets = {
			{
				filetype = "NvimTree",
				text = "Nvim Tree",
				highlight = "Directory",
			}
		},
        -- make bufferline small/minimal
        separator_style = "thin",
		always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        max_name_length = 18,
        tab_size = 10,
      },
  })
  end
}

