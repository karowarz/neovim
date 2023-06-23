return {
  "andrewferrier/debugprint.nvim",
  opts = { ... },
  -- Locate a variable using a motion, and insert a debugging line just above the current line which outputs it
  vim.keymap.set("n", "<Leader>ol", function()
    -- Note: setting `expr=true` and returning the value are essential
    -- It's also important to use motion = true for operator-pending motions
    return require("debugprint").debugprint({ motion = true })
  end, {
    expr = true,
  }),
  -- Dependency only needed for NeoVim 0.8
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  -- Remove the following line to use development versions,
  -- not just the formal releases
  version = "*",
}
