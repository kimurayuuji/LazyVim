return {
  "mechatroner/rainbow_csv",
  ft = { "csv", "tsv", "csv_semicolon", "csv_whitespace", "csv_pipe", "rfc_csv", "rfc_semicolon" },
  config = function()
    require("which-key").add({
      { "<leader>r", group = "Rainbow CSV", icon = "" },
    })
  end,
  keys = {
    { "<leader>rd", "<cmd>RainbowDelim<cr>",      desc = "Rainbow CSV: Set delimiter" },
    { "<leader>rm", "<cmd>RainbowMultiDelim<cr>", desc = "Rainbow CSV: Set multi-char delimiter" },
    { "<leader>rn", "<cmd>NoRainbowDelim<cr>",    desc = "Rainbow CSV: Disable highlighting" },
    { "<leader>ra", "<cmd>RainbowAlign<cr>",      desc = "Rainbow CSV: Align columns" },
    { "<leader>rs", "<cmd>RainbowShrink<cr>",     desc = "Rainbow CSV: Shrink columns" },
  },
}
