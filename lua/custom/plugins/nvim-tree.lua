return {
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {
        view = {
          width = math.floor(vim.o.columns * 0.2),
          side = 'left', -- or "right"
          preserve_window_proportions = true,
        },
        -- actions = {
        --  open_file = {
        --    quit_on_open = true, -- close the tree after selecting a file
        --  },
        -- },
      } -- Add custom options here if needed
    end,
  },
}
