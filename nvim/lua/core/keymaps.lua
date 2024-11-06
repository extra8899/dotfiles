-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' ',

-- Disable the spacebar key's default behaviour in Normal and Visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For Conciseness
local opts = { noremap = true, silent = true }

-- Save File
vim.keymap.set({'n'}, '<C-s>', '<cmd> w <CR>', opts);

-- Exit File
vim.keymap.set({'n'}, '<C-q>', '<cmd> q <CR>', opts);

-- Save without formatting
-- Save Normal
vim.keymap.set({'n'}, '<leader>sn', '<cmd>noautocmd w <CR>', opts )

-- Delete single character without copying into register
vim.keymap.set({'n'}, 'x', '"_x', opts)

-- Vertical Scroll centering
vim.keymap.set({'n'}, '<C-d>', '<C-d>zz', opts)
vim.keymap.set({'n'}, '<C-u>', '<C-u>zz', opts)

-- Resize with arrows
vim.keymap.set({'n'}, '<Up>', ':resize +1 <CR>', opts)
vim.keymap.set({'n'}, '<Down>', ':resize -1 <CR>', opts)
vim.keymap.set({'n'}, '<Left>', ':vertical resize -1 <CR>', opts)
vim.keymap.set({'n'}, '<Right>', ':vertical resize +1 <CR>', opts)

-- Escape search mode
vim.keymap.set({'n', 'v'}, '<leader><Esc>', ':noh <CR> :let @/ = ""<CR>', opts)

-- Buffers
vim.keymap.set({'n'}, '<leader>bn', ':bnext <CR>', opts)
vim.keymap.set({'n'}, '<leader>bp', ':bprevious <CR>', opts)
vim.keymap.set({'n'}, '<leader>bd',':bdelete <CR>', opts)
vim.keymap.set({'n'}, '<leader>bo', '<cmd> enew <CR>', opts)

-- Tab management
vim.keymap.set({'n'}, '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set({'n'}, '<leader>tc', ':close<CR>', opts)
vim.keymap.set({'n'}, '<leader>tn', ':tabn<CR>', opts)
vim.keymap.set({'n'}, '<leader>tp', ':tabp<CR>', opts)

-- Stay in indent mode
vim.keymap.set({'v'}, '>', '>gv', otps);


