-- Inspired by https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/keymaps.lua

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Remap space as leader key
vim.g.mapleader = " "

-- Normal --
-- Center screen on pagination and search results jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Buffers
vim.keymap.set("n", "<leader>bn", ":bn<cr>")
vim.keymap.set("n", "<leader>bp", ":bp<cr>")
vim.keymap.set("n", "<leader>bd", ":bdelete<cr>")

-- Clear highlights
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<cr>")

-- Insert --
-- Press jk fast to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Visual --
-- Better paste
vim.keymap.set("v", "p", '"_dP')

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<cr>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<cr>gv-gv")

-- Plugins
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>l", "<cmd>NvimTreeFindFile<cr>")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

vim.keymap.set("n", "<leader>s", "<cmd>SymbolsOutline<cr>")

vim.keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>")
vim.keymap.set("x", "<leader>/", '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<cr>')

vim.keymap.set("n", "<leader>bcl", "<cmd>BufferLineCloseLeft<cr>")
vim.keymap.set("n", "<leader>bcr", "<cmd>BufferLineCloseRight<cr>")
