return {
  vim.keymap.set('n', '<leader>ff', function()
    require('telescope.builtin').find_files()
  end, { desc = 'Telescope: find files' }),
}
