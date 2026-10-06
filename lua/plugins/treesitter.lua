return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false, -- the main branch does not support lazy-loading
  build = ":TSUpdate",
  config = function()
    local parsers = {
      "bash", "css", "elixir", "erlang", "go", "html", "javascript",
      "json", "lua", "python", "regex", "ruby", "rust", "terraform",
      "typescript", "vue", "yaml", "vim", "vimdoc", "query",
    }

    local ts = require("nvim-treesitter")
    ts.install(parsers)

    -- Enable highlighting and indentation for buffers that have a parser.
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter_attach", { clear = true }),
      callback = function(args)
        local ok = pcall(vim.treesitter.start, args.buf)
        if ok then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
