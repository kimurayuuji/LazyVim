return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- サイドバー風にしたい場合は preset を併用
            layout = {
              preset = "sidebar",
              preview = false,
              -- ←ここが重要（layout が二重になっている）
              layout = {
                position = "right",
                -- 幅を調整したい場合は size や width も指定可
                -- size = 0.25, -- 画面幅の25%など
              },
            },
          },
        },
      },
      notifier = {
        enabled = true,
        timeout = 10000,
      },
    },
  },
}
