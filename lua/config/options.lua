-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = "a"

vim.o.wrap = true

-- rounded border for floating windows
vim.opt.winborder = 'rounded'

vim.o.showmode = false

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300


-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

vim.o.confirm = false

-- Indentation 
vim.o.tabstop=2
vim.o.softtabstop=2
vim.o.shiftwidth=2

-- remove ~ after the text line ends
vim.opt.fillchars:append({ eob = " " })


-- lsp error
vim.diagnostic.config({
  virtual_lines = {
  current_line = true,
  },
})

