return {
  "olrtg/emmet-language-server",
  config = function()
    vim.api.nvim_create_autocmd({ "FileType" }, {
      pattern = "astro,css,eruby,html,htmldjango,javascriptreact,less,pug,sass,scss,svelte,typescriptreact,vue",
      callback = function()
        vim.lsp.start({
          cmd = { "emmet-language-server", "--stdio" },
          root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
          init_options = {
            --- @type table<string, any> https://docs.emmet.io/customization/preferences/
            preferences = {},
            --- @type "always" | "never" Defaults to `"always"`
            showExpandedAbbreviation = "always",
            --- @type boolean Defaults to `true`
            showAbbreviationSuggestions = true,
            --- @type boolean Defaults to `false`
            showSuggestionsAsSnippets = false,
            --- @type table<string, any> https://docs.emmet.io/customization/syntax-profiles/
            syntaxProfiles = {},
            --- @type table<string, string> https://docs.emmet.io/customization/snippets/#variables
            variables = {},
            --- @type string[]
            excludeLanguages = {},
          },
        })
      end,
    })
  end,
}
