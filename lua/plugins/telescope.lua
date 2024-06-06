return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local actions = require "telescope.actions"
    require('telescope').setup{
      defaults = {
        mappings = {
          i = {
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
          n = {
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          }
        }
      },
      pickers = {
        find_files = {
          theme = "ivy",
        },
        live_grep = {
          theme  = "ivy",
        },
        buffers = {
          theme = "ivy",
        },
        colorscheme = {
          theme = "ivy",
        }
      }
    }

    vim.keymap.set('n', '<leader>f', ':Telescope find_files<cr>')
    vim.keymap.set('n', '<leader>s', ':Telescope live_grep<cr>')
    vim.keymap.set('n', '<leader>b', ':Telescope buffers<cr>')
    vim.keymap.set('n', '<leader>cs', ':Telescope colorscheme<cr>')
    require('telescope').load_extension('fzf')
  end,
}
