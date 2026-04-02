return {
  'nvim-treesitter/nvim-treesitter',
  version = false, -- Last release is way too old, we need main branch
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    -- This ensures the plugin's /lua folder is definitely in the path
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
        return
    end

    configs.setup({
      ensure_installed = {
        'bash', 'css', 'elixir', 'erlang', 'go', 'html', 'javascript',
        'json', 'lua', 'python', 'regex', 'ruby', 'rust', 'terraform',
        'typescript', 'vue', 'yaml', 'vim', 'vimdoc', 'query'
      },
      sync_install = false,
      highlight = { 
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}
