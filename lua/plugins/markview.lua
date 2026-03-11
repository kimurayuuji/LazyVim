return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = { "saghen/blink.cmp" },
    ft = { "markdown" },
    opt = {
      preview = {
        enable = false
      }
    },
    config = function()
      require("which-key").add({
        { "<leader>m", group = "markdown", icon = "󰽛" },
      })
    end,
    keys = {
      { "<leader>mt", "<cmd>Markview toggle<CR>", desc = "Markview toggle" },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && yarn install",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreview<CR>", desc = "Markdown Preview" },
    },
  }
};
