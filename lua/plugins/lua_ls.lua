-- lua/plugins/lua_ls.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              checkThirdParty = false,
              -- Neovim の runtime をライブラリとして認識させると補完がリッチに
              library = vim.api.nvim_get_runtime_file("", true),
            },
            completion = { callSnippet = "Replace" },
          },
        },
      },
    },
  },
}
