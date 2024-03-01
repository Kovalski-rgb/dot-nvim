vim.g.mapleader = " "

vim.keymap.set('n', '<leader>qq', vim.cmd.Ex)

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+yg_')
vim.keymap.set('n', '<leader>yy', '"+yy')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>Y', '"+yg_')
vim.keymap.set('v', '<leader>yy', '"+yy')

vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+p')

vim.keymap.set('n', '<leader>ww', ':w<cr>')
