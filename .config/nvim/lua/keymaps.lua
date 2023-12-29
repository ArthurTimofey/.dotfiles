local Util = require 'util'

local map = Util.safe_keymap_set

map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file' })
map({ 'n' }, '<leader>ee', '<cmd>NvimTreeOpen<cr>', { desc = 'Open Nvim Tree Open' })
map({ 'n' }, '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open LazyGit', silent = true })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit all' })
