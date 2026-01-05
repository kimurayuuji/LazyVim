---@type LazyPluginSpec
return {
  {
    "mrjones2014/smart-splits.nvim",
    keys = {
      {
        "<C-w>h",
        function()
          require("smart-splits").move_cursor_left()
        end,
        desc = "Move cursor left",
      },
      {
        "<C-w>j",
        function()
          require("smart-splits").move_cursor_down()
        end,
        desc = "Move cursor down",
      },
      {
        "<C-w>k",
        function()
          require("smart-splits").move_cursor_up()
        end,
        desc = "Move cursor up",
      },
      {
        "<C-w>l",
        function()
          require("smart-splits").move_cursor_right()
        end,
        desc = "Move cursor right",
      },
      {
        "<M-h>",
        function()
          require("smart-splits").resize_left()
        end,
        desc = "Resize cursor left",
      },
      {
        "<M-j>",
        function()
          require("smart-splits").resize_down()
        end,
        desc = "Resize cursor down",
      },
      {
        "<M-k>",
        function()
          require("smart-splits").resize_up()
        end,
        desc = "Resize cursor up",
      },
      {
        "<M-l>",
        function()
          require("smart-splits").resize_right()
        end,
        desc = "Resize cursor right",
      },
    },
  },
}
