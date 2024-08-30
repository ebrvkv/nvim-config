return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "dockerls", "gopls", "yamlls", "rust_analyzer",
        "sqlls", "tsserver", "jsonls", "terraformls",
        "ansiblels", "angularls", "lua_ls", "vimls",
        "bufls", "cssls", "volar", "starlark_rust"
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "delve", "js" },
      adapters = {
        go = {
          type = "server",
          port = "${port}",
          executable = {
            command = vim.fn.stdpath("data") .. '/mason/bin/dlv',
            args = { "dap", "-l", "127.0.0.1:${port}" },
          }
        }
      }
    }
  }
}

