return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "typescript", "javascript", "vim", "help", "html", "php", "regex", "scss", "css", "c", "lua" },
      auto_install = true,
 
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end,
  build = ':TSUpdate'
}
