return {
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme dracula]])
    end
  },
  { 'kdheepak/lazygit.nvim' },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
} 
