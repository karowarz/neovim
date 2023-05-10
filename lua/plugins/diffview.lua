return {
  "sindrets/diffview.nvim",
  keys = {
    {
      "<C-p>",
      ":lua require'telescope'.extensions.project.project{}<CR>",
      desc = "Projects Tele",
    },
    {
      "<leader>oh",
      ":DiffviewFileHistory % <CR>",
      desc = "File history changes",
    },
    {
      "<leader>ox",
      ":DiffviewClose <CR>",
      desc = "Close Diffview",
    },
  },
}
