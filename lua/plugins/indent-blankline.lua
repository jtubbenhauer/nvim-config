vim.opt.list = true
return {
  "lukas-reineke/indent-blankline.nvim" ,
  config = function()
    require('indent_blankline').setup({
      show_end_of_line = true,
      show_current_context = true,
    })
  end
}
