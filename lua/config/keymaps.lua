-- clear highlight after search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Select all
vim.keymap.set('n', '<C-a>', 'gg0v0G$', {desc = 'select all'})

-- Copy and cut to clipboard
vim.keymap.set('v', '<C-c>', '"+y<CR>',{desc = 'copy to clipboard'})
vim.keymap.set('v', '<C-x>', '"+d<CR>', {desc = 'cut to clipboard'})

-- jump between splits with CTRL + h,j,k,l
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- buffers
vim.keymap.set('n', '<leader>bd', ':bd<CR>', {desc = 'delete current buffer', silent = true})
vim.keymap.set('n', '<S-l>', ':bnext<CR>', {desc = 'switch to next buffer', silent = true})
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', {desc = 'switch to next buffer', silent = true})

-- nvim tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {desc = 'toggle nvim tree', silent = true})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
