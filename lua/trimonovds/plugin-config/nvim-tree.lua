vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, action = "edit", mode = "n" },
        { key = "u", action = "dir_up" },
        { key = "h", action = "close_node" },
        { key = "v", action = "vsplit" },
        { key = "C", action = "cd" },
      },
    },
  },
})

vim.keymap.set("n", "<leader>et", "<cmd>:NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>ef", "<cmd>:NvimTreeFindFile<cr>")
