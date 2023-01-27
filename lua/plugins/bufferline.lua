return {
  'akinsho/bufferline.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '<C-h>', ':BufferLineCyclePrev<cr>' },
    { '<C-l>', ':BufferLineCycleNext<cr>' },
  },
  config = function()
    require('bufferline').setup({
      options = {
        offsets = {
          {
            filetype = 'NeoTree',
            text = 'File Explorer',
            text_align = 'center',
            seperator = true
          }
        },
        diagnostics = "coc",
        numbers = 'ordinal',
      }
    })
  end
  }
