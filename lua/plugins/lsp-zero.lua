return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  lazy = false,
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  },
  config = function()
    local lsp = require('lsp-zero').preset({
      name = 'minimal',
      set_lsp_keymaps = {omit = {'<Tab>'}},
      manage_nvim_cmp = true,
      suggest_lsp_servers = false,
    })
    
    lsp.on_attach(function(client, bufnr)
      local opts = {buffer = bufnr}
      local bind = vim.keymap.set
      bind('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
      bind('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()', opts)
      bind('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()', opts)
    end)

    lsp.setup();
  end
}
