return {
  'romgrk/barbar.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  keys = {
    { '<C-h>', ':BufferPrevious<cr>' },
    { '<C-l>', ':BufferNext<cr>' },
    { '<leader>bc', ':BufferClose<cr>' }, 
  },
}
