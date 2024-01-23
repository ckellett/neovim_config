local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)

  require('lazy').setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'folke/tokyonight.nvim' },
  { 'rmehri01/onenord.nvim' },
  { 'nvim-lualine/lualine.nvim' },
  { 'kyazdani42/nvim-web-devicons' },
  { 'nvim-tree/nvim-tree.lua' },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  { 'vimwiki/vimwiki' },
  { 'janko-m/vim-test' },
  { 'lewis6991/gitsigns.nvim' },
  { 'pangloss/vim-javascript' },
  { 'maxmellon/vim-jsx-pretty' },
  { 'ngmy/vim-rubocop' },
  { 'tpope/vim-rails' },
  { 'vim-ruby/vim-ruby' },
  { 'norcalli/nvim-colorizer.lua' },
  { 'navarasu/onedark.nvim' },
  { 'savq/melange-nvim' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'sainnhe/sonokai' }
})
