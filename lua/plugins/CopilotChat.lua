-- This Lua module configures the CopilotChat plugin for Neovim.
-- It specifies the plugin repository, branch, dependencies, and options.

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim", -- Plugin repository
    branch = "main", -- Branch to use
    dependencies = {
      { "github/copilot.vim" }, -- Dependency: GitHub Copilot Vim plugin
      { "nvim-lua/plenary.nvim" }, -- Dependency: Plenary.nvim for curl and log wrapper
    },
    opts = {
      debug = false, -- Enable or disable debugging
    },
  },
}
