vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup({
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },
  view = {
    adaptive_size = false,
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
