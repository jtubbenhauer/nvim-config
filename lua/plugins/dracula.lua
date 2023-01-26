return {
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require('dracula')
      dracula.setup({
        overrides = {
          DiffAdd = { bg = dracula.colors().bright_green, fg = dracula.colors().black }
        }
      })
      vim.cmd([[colorscheme dracula]])
    end
  },
}
