return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '<leader>e', ':NvimTreeToggle<cr>' },
    { '<leader>se', ':NvimTreeFindFile<cr>' }
  },
  config = function()
    require('nvim-tree').setup({
      view = {
          adaptive_size = true,
        },
        renderer = {
          group_empty = true,
        },
    })
  end
}
