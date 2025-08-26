local colors = {
  bg       = nil, -- transparent
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    -- Setup empty sections first
    local config = {
      options = {
        component_separators = '',
        section_separators = '',
        theme = {
          normal = { c = { fg = colors.fg, bg = colors.bg } },
          inactive = { c = { fg = colors.fg, bg = colors.bg } },
        },
        always_divide_middle = false,
      },
      sections = { lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {} },
      inactive_sections = { lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {} },
    }

    -- Helper functions to insert components
    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    -- LEFT
	ins_left {
  function()
    local mode_map = {
      n = "N",
      i = "I",
      v = "V",
      [""] = "V",
      V = "V",
      c = "C",
      s = "S",
      S = "S",
      ic = "I",
      R = "R",
      Rv = "R",
      t = "T",
    }
    return mode_map[vim.fn.mode()] or vim.fn.mode()
  end,
  color = { fg = colors.green, bg = colors.bg, gui = "bold" },
  padding = { left = 1, right = 1 },
}

    ins_left { 'branch', icon = '', color = { fg = colors.violet, gui = 'bold', bg = nil } }
    ins_left {
      'diff',
      symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
      diff_color = { added = { fg = colors.green }, modified = { fg = colors.orange }, removed = { fg = colors.red } },
      cond = conditions.hide_in_width,
      bg = nil
    }
    ins_left { 'filename', cond = conditions.buffer_not_empty, color = { fg = colors.magenta, gui = 'bold', bg = nil }}
		ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
	 symbols = { error = ' ', warn = ' ', info = '' },
  diagnostics_color = {
    error = { fg = colors.red },
    warn = { fg = colors.yellow },
    info = { fg = colors.cyan },
  },
}
    ins_left { 'location', bg = nil }
    ins_left { 'progress', color = { fg = colors.fg, gui = 'bold', bg = nil } }

    -- MID separator
    ins_left { function() return '%=' end }


    -- RIGHT
    ins_right { 'o:encoding', fmt = string.upper, cond = conditions.hide_in_width, color = { fg = colors.green, gui = 'bold', bg = nil } }
    ins_right { 'fileformat', fmt = string.upper, icons_enabled = false, color = { fg = colors.green, gui = 'bold', bg = nil } }
	ins_right {
  'filetype',
  icon_only = false,
  colored = true,
  icons_enabled = true,
  padding = { left = 1, right = 1 },
}
    -- finally setup lualine
    lualine.setup(config)
  end
}
