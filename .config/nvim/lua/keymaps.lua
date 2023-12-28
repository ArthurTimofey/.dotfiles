local Util = require 'util'

local map = Util.safe_keymap_set

map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file' })
map({ 'n' }, '<leader>ee', '<cmd>Neotree<cr>', { desc = 'Open neo-tree' })
map({ 'n' }, '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open LazyGit', silent = true })
