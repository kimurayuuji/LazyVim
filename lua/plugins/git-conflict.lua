return {
  "akinsho/git-conflict.nvim",
  version = "*",
  opts = {
    default_mappings = false,
    keymaps = {
      ours = "<leader>Co",
      theirs = "<leader>Ct",
      none = "<leader>C0",
      both = "<leader>Cb",
      next = "<leader>Cx",
      prev = "<leader>CX",
    },
  },
}
