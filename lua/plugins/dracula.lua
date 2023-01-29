return {
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require('dracula')
      dracula.setup({
        overrides = {
          DiffAdd = { bg = "#283F3E" },
          DiffText = { bg = "#283F3E" },
          DiffDelete = { bg = "#47313A" },
          CocInlayHint = { fg = dracula.colors().comment }
        }
      })
      vim.cmd([[colorscheme dracula]])
    end
  },
}
