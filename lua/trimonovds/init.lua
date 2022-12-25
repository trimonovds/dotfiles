require("trimonovds.options")
require("trimonovds.keymaps")
require("trimonovds.lsp")
require("trimonovds.treesitter")
require("trimonovds.lualine")
require("trimonovds.nvim-tree")
require("trimonovds.comment")
require("trimonovds.gitsigns")
require("trimonovds.toggleterm")
require("trimonovds.colorscheme")
require("trimonovds.cmp")
require("trimonovds.comment")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  group = highlight_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})
