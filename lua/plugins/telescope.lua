return {
  "nvim-telescope/telescope-project.nvim",
  keys = {
    {
      "<C-p>",
      ":lua require'telescope'.extensions.project.project{}<CR>",
      desc = "Projects Tele",
    },
  },
  config = function()
    require("telescope").load_extension("project")
  end,
}
