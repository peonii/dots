vim.keymap.set('n', '<leader>e', function() vim.cmd('Neotree') end)

vim.keymap.set('n', '<c-a>', '<c-w>h', { noremap = true })
vim.keymap.set('n', '<c-d>', '<c-w>l', { noremap = true })
vim.keymap.set('n', '<c-w>', '<c-w>k', { noremap = true })
vim.keymap.set('n', '<c-s>', '<c-w>j', { noremap = true })
