vim.schedule(function()
  require('barbar').setup {
    animation = false,
    sidebar_filetypes = {
      NvimTree = true,
    },
  }
end)
return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- git status
    'nvim-tree/nvim-web-devicons', -- file icons
  },
}
