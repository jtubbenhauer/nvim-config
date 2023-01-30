return {
  'lewis6991/gitsigns.nvim',
  keys = {
    { '<leader>gsm', ':Gitsigns change_base origin/HEAD' },
    { '<leader>gs', ':Gitsigns change_base' }
  },
  config = function()
    require('gitsigns').setup({
      signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      }
    })
  end
  }
