return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')
    configs.setup({
      ensure_installed = {
        'bash',
        'css',
        'elixir',
        'erlang',
        'go',
        'html',
        'javascript',
        'json',
        'lua',
        'python',
        'regex',
        'ruby',
        'rust',
        'terraform',
        'typescript',
        'vue',
        'yaml'
      },
      sync_install = false,
      highlight = { enable = true },
      rainbow = { enable = true },
      indent = { enable = true, disable = { } },
      additional_vim_regex_highlighting = false
    })
  end,
}
