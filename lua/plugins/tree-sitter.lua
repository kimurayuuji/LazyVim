-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- 既存 opts を上書きせずに追記
      opts.indent = opts.indent or {}
      opts.indent.enable = true
      -- Markdown だけ indent 機能を無効化
      local disabled = opts.indent.disable or {}
      if type(disabled) == "table" then
        table.insert(disabled, "markdown")
        table.insert(disabled, "markdown_inline") -- 必要なら
      else
        opts.indent.disable = { "markdown", "markdown_inline" }
      end
      -- for dubug
      print("nvim-treesitther")
    end,
  },
}
