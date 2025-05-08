return {
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {
        view = {
          width = 32, -- Set the panel width
          side = 'left', -- Can be 'left' or 'right'
        },
      } -- Add custom options here if needed
    end,
  },
}
