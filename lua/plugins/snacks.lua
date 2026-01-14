---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    ---@module "snacks.nvim"
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            -- サイドバー風にしたい場合は preset を併用
            layout = {
              preset = "sidebar",
              layout = {
                position = "right",
              },
            },
          },
        },
      },
      notifier = {
        enabled = true,
        timeout = 10000,
      },
      terminal = {
        win = { style = "terminal", border = "rounded", width = 0.8, height = 0.8 },
        shell = "zsh",
      },
    },
    keys = {
      {
        "<leader>t",
        function()
          Snacks.terminal.toggle("zsh")
        end,
        desc = "Toggle term (float)",
      },
    },
  },
}
