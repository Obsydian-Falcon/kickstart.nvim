-- A file explorer for Neovim written in Lua
-- https://github.com/nvim-tree.lua

return {
  'nvim-tree/nvim-tree.lua',
  version = '*', -- latest version
  lazy = false, -- no lazy loading needed
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }

    -- Grab nvim-tree API for opening and closing --
    local api = require 'nvim-tree.api'

    vim.keymap.set('n', '<leader>ff', function()
      api.tree.toggle()
    end, { noremap = true, silent = true, desc = 'Toggle the File Browser' })
  end,
}
