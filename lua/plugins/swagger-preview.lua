return {
  "vinnymeller/swagger-preview.nvim",
  cmd = { "SwaggerPreview", "SwaggerPreviewStop", "SwaggerPreviewToggle" },
  build = "npm i",
  keys = {
    { "<leader>ms", "<cmd>SwaggerPreviewToggle<cr>", desc = "Swagger Preview" },
  },
  config = true,
}
