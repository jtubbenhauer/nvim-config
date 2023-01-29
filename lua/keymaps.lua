vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('i', '<Tab>', '<S-Tab>')

-- Save and get out of instert mode
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save' })
vim.keymap.set('n', '<C-s>', '<cmd>write<cr>', { desc = 'Save' })
vim.keymap.set('i', '<C-s>', '<cmd>write<cr>', { desc = 'Save' })
vim.keymap.set('i', '<C-i>', '<Esc>')
vim.keymap.set('v', '<C-i>', '<Esc>')

-- Move lines
vim.keymap.set('n', '<C-Up>', 'ddkP')
vim.keymap.set('n', '<C-Down>', 'ddp')
vim.keymap.set('n', '<C-j>', 'ddp')
vim.keymap.set('n', '<C-k>', 'ddkP')

vim.keymap.set('v', '<C-Up>', 'xkP`[V`]')
vim.keymap.set('v', '<C-k>', 'xkP`[V`]')
vim.keymap.set('v', '<C-Down>', 'xp`[V`]')
vim.keymap.set('v', '<C-j>', 'xp`[V`]')

vim.keymap.set('n', '<leader>gg', ':LazyGit<cr>')
vim.keymap.set('n', '<leader>gbm', ':Gitsigns change_base origin/HEAD<cr>')
vim.keymap.set('n', '<leader>gb', ':Gitsigns change_base<cr>')
vim.keymap.set('n', '<leader>gd', ':Gitsigns diffthis origin/HEAD<cr>')

vim.keymap.set('n', '<leader>tp', 'gT');

