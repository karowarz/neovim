return {
  "debugloop/telescope-undo.nvim",
  keys = {
    {
      "<leader>U",
      "<cmd>Telescope undo<cr>",
      desc = "Local changes",
    },
  },
  config = function()
    require("telescope").load_extension("undo")
  end,
}
