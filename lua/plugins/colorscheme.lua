return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
	require("catppuccin").setup({
    flavour = "frappe",
    background = {
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    float = {
        transparent = false,
		solid = false,
	},
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true,
		shade = "dark",
        percentage = 0.15,
	},
    no_italic = false,
    no_bold = false, 
    no_underline = false, -- Force no underline
    styles = {
		comments = { "italic" }, 
		conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    auto_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
		bufferline = true,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
},
})
-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
  end,
}

