config = function () 
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
      'typescript',
      'vim',
      'yaml'
    },
    sync_install = false,
    highlight = { enable = true },
    rainbow = { enable = true },
    indent = { enable = true, disable = { 'ruby' } },
    additional_vim_regex_highlighting = false
  })
end
