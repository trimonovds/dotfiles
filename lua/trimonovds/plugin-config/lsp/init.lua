local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "trimonovds.plugin-config.lsp.lsp"
require("trimonovds.plugin-config.lsp.handlers").setup()

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, opts)
