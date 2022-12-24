require("trimonovds.options")
require("trimonovds.keymaps")
require("trimonovds.lsp")
require("trimonovds.treesitter")
require("trimonovds.lualine")
require("trimonovds.nvim-tree")
require("trimonovds.comment")
require("trimonovds.gitsigns")
require("trimonovds.toggleterm")
require("trimonovds.cmp")

-- Set colorscheme
vim.o.background = "light"
vim.cmd [[colorscheme gruvbox]]

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
