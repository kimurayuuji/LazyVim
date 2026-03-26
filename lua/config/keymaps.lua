vim.keymap.set("n", "<leader>Q", function()
  local key = vim.fn.getchar()

  local reg = key
  if type(key) == "number" then
    reg = vim.fn.nr2char(key)
  end
  ---@cast reg string

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

-- VSCode
if vim.g.vscode then
  vim.keymap.set("n", "<leader>e", [[<Cmd>call VSCodeNotify('workbench.view.explorer')<CR>]], { desc = "Explorer: Focus on folder view" })
  vim.keymap.set("n", "gr", [[<Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>]])
  vim.keymap.set("n", "gR", [[<Cmd>call VSCodeNotify('references-view.findReferences')<CR>]])
  vim.keymap.set("n", "za", [[<Cmd>call VSCodeNotify('editor.toggleFold')<CR>]])
end
