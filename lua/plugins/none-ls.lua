return {
  "nvimtools/none-ls.nvim",
  enabled = true,
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    --
    config.debug = true
    config.sources = {
      null_ls.builtins.formatting.goimports,
      null_ls.builtins.formatting.alejandra
      -- null_ls.builtins.diagnostics.golangci_lint
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }


    return config -- return final config table
  end,
}
