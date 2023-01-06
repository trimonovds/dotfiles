require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },
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

vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>l", "<cmd>:NvimTreeFindFile<cr>")
