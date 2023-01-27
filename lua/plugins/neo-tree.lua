return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x', 
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim'
  },
  keys = {
    { '<leader>et', ':Neotree toggle<cr>' },
    { '<leader>eb', ':Neotree buffers<cr>' },
    { '<leader>egs', ':Neotree git_status git_base=HEAD<cr>' },
    { '<leader>egm', ':Neotree git_status git_base=origin/HEAD<cr>' }
  },
  config = function ()
    -- Unless you are still migrating, remove the deprecated commands from v1.x
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "", texthl = "DiagnosticSignHint"})
      -- NOTE: this is changed from v1.x, which used the old style of highlight groups
      -- in the form "LspDiagnosticsSignWarning"
      require('neo-tree').setup({
        source_selector = {
          winbar = true
        },
        filesystem = {
          follow_current_file = true,
          group_empty_dirs = true
       },
       default_component_configs = {
         indent = {
           indent_size = 1
         }
       }
      })

  end
}
