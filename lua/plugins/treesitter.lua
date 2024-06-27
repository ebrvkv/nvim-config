return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "terraform", "lua", "go", "c", "bash", "css",
      "hcl", "json", "sql", "gomod", "html", "jq", "vue", "javascript",
    },
    auto_install = true,
    highlight = {
      enable = true,
    }
  }
}
