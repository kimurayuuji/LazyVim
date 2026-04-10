return {
  "akinsho/git-conflict.nvim",
  version = "*",
  opts = {
    default_mappings = false,
  },
  config = function(_, opts)
    require("git-conflict").setup(opts)
    require("which-key").add({
      { "<leader>gc", group = "Git conflict", icon = "" },
    })
    vim.keymap.set("n", "<leader>gco", "<cmd>GitConflictChooseOurs<CR>", { desc = "GitConflictChooseOurs" })
    vim.keymap.set("n", "<leader>gct", "<cmd>GitConflictChooseTheirs<CR>", { desc = "GitConflictChooseTheirs" })
    vim.keymap.set("n", "<leader>gcb", "<cmd>GitConflictChooseBoth<CR>", { desc = "GitConflictChooseBoth" })
    vim.keymap.set("n", "<leader>gc0", "<cmd>GitConflictChooseNone<CR>", { desc = "GitConflictChooseNone" })
    vim.keymap.set("n", "<leader>gcn", "<cmd>GitConflictNextConflict<CR>", { desc = "GitConflictNextConflict" })
    vim.keymap.set("n", "<leader>gcp", "<cmd>GitConflictPrevConflict<CR>", { desc = "GitConflictPrevConflict" })
  end,
}
