return {
  "amrbashir/nvim-docs-view",
  keys = {
    {
      "<leader>od",
      ":DocsViewToggle<cr>",
      desc = "Toggle docs",
    },
  },
  opt = true,
  cmd = { "DocsViewToggle" },
  config = function()
    require("docs-view").setup({
      position = "right",
      width = 60,
    })
  end,
}
