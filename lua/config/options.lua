vim.opt.termguicolors = true

-- クリップボード
vim.opt.clipboard = "unnamedplus"

-- 改行コード
vim.api.nvim_create_autocmd("TextChanged", {
  pattern = "*",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    for _, line in ipairs(lines) do
      if line:find("\r") then
        local ok, _ = pcall(function()
          vim.cmd("silent! %s/\\r//g")
        end)
        break
      end
    end
  end,
})

vim.opt.relativenumber = false

-- Copy paths to clipboard
vim.api.nvim_create_user_command("CopyFileName", function()
  local filename = vim.fn.expand("%:t")
  vim.fn.setreg("+", filename)
  vim.notify("Copied filename: " .. filename)
end, { desc = "Copy filename to clipboard" })

vim.api.nvim_create_user_command("CopyRelPath", function()
  local rel_path = vim.fn.expand("%")
  vim.fn.setreg("+", rel_path)
  vim.notify("Copied relative path: " .. rel_path)
end, { desc = "Copy relative path to clipboard" })

vim.api.nvim_create_user_command("CopyAbsPath", function()
  local abs_path = vim.fn.expand("%:p")
  vim.fn.setreg("+", abs_path)
  vim.notify("Copied absolute path: " .. abs_path)
end, { desc = "Copy absolute path to clipboard" })
