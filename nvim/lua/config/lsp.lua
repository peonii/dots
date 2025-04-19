require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig");

lspconfig.lua_ls.setup {};
lspconfig.rust_analyzer.setup {};
lspconfig.clangd.setup {};

vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')

-- Keymaps
vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end)
