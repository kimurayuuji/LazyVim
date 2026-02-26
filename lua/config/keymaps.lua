vim.keymap.set("n", "<leader>Q", function()
  local key = vim.fn.getchar()
  local reg = type(key) == "number" and vim.fn.nr2char(key) or key

  local reg_content = vim.fn.getreg(reg)

  if reg_content == "" then
    vim.notify(string.format("Macro '%s' is empty", reg))
    return
  end

  vim.ui.input({
    prompt = "Edit a macro",
    default = reg_content,
  }, function(i)
    if i == nil or i == "" then
      vim.notify(string.format("Edit a macro '%s' canceled", reg))
      return
    end
    vim.fn.setreg(reg, i)
  end)
end, { desc = "Edit a macro", silent = true })

-- ターミナルモードの復帰
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- Split
vim.keymap.set("n", "<C-w>-", "<C-w>s", { desc = "Horizontal Split" })
vim.keymap.set("n", "<C-w>|", "<C-w>v", { desc = "Vertical Split" })
vim.keymap.set("n", "<C-w>x", "<C-w>c", { desc = "Close split pane" })

-- TODO LSP
