-- ~/.config/nvim/lua/plugins/terraform-ls.lua
return {
  -- Ensure mason and mason-lspconfig are installed
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    opts = {},
  },

  -- Setup terraform-ls to work with .nomad files
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()

      -- Configure terraform-ls for .nomad and .hcl files
      require('lspconfig').terraformls.setup {
        cmd = { 'terraform-ls', 'serve' },
        filetypes = { 'hcl', 'nomad' }, -- Add "nomad" to filetypes
      }

      -- Configure filetype detection for .nomad files
      vim.cmd [[
        autocmd BufRead,BufNewFile *.nomad set filetype=hcl
      ]]
    end,
  },
}
