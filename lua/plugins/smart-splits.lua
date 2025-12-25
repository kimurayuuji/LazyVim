---@type LazySpec
return {
  {
    "mrjones2014/smart-splits.nvim",
    opts = {},
    config = function(_, _)
      local ss = require("smart-splits")

      -- ■ 移動：Ctrl + h/j/k/l
      vim.keymap.set("n", "<C-h>", ss.move_cursor_left, { silent = true, desc = "move left" })
      vim.keymap.set("n", "<C-j>", ss.move_cursor_down, { silent = true, desc = "move down" })
      vim.keymap.set("n", "<C-k>", ss.move_cursor_up, { silent = true, desc = "move up" })
      vim.keymap.set("n", "<C-l>", ss.move_cursor_right, { silent = true, desc = "move right" })

      -- ■ リサイズ：Alt + h/j/k/l
      vim.keymap.set("n", "<M-h>", function()
        ss.resize_left()
        ss.resize_down()
      end, { silent = true, desc = "resize to left" })
      vim.keymap.set("n", "<M-j>", function() end, { silent = true, desc = "resize to down" })
      vim.keymap.set("n", "<M-k>", function()
        ss.resize_up()
      end, { silent = true, desc = "resize to up" })
      vim.keymap.set("n", "<M-l>", function()
        ss.resize_right()
      end, { silent = true, desc = "resize to right" })
    end,
  },
}
