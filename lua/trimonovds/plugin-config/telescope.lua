require('telescope').setup()

vim.keymap.set("n", "<leader>ff", "<cmd>:Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fr", "<cmd>:Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>:Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>:Telescope lsp_document_symbols<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>:Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>:Telescope help_tags<cr>")
