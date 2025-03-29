return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'none', -- Option for buffer numbers
        show_buffer_icons = true, -- Enable buffer icons
        seperator_style = 'thin', -- Seperator between buffers
        mode = 'tabs', -- Use tabs
      },
    }
  end,
}
