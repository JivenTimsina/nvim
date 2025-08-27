return{
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-CR>]],
			direction = "float",
			start_in_insert = true,
			persist_size = true,
			close_on_exit = true,
		})
	end
}
