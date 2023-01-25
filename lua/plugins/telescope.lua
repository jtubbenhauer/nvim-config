return {
  { 'axkirillov/telescope-changed-files' },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>fgc', ':Telescope changed_files<cr>', desc = 'Changes to main branch' },
      { '<leader>fgb', ':Telescope git_branches<cr>', desc = 'Git branches' },
      { '<leader>fgs', ':Telescope git_status<cr>', desc = 'Git status' },
      { '<leader>ff', ':Telescope find_files<cr>', desc = 'Find files' },
      { '<leader>fg', ':Telescope live_grep<cr>', desc = 'Live grep' },
    },
    config = function()
      require('telescope').setup({
        defaults = {
          path_display = { 'smart' }
        }
      })
    end
  }
}
