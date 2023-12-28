config = function () 
  local configs = require('nvim-treesitter.configs')

  configs.setup({
    ensure_installed = { 'bash', 'css', 'elixir', 'erlang', 'go', 'html', 'javascript', 'json', 'lua', 'python', 'regex', 'ruby', 'rust', 'typescript', 'vim', 'yaml' },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
  })
end
