require('dap-go').setup()

vim.filetype.add {
  pattern = {
    [".*/roles/.*.yml"] = "yaml.ansible",
    [".*/roles/.*.yaml"] = "yaml.ansible",
    [".*/playbooks/.*.yml"] = "yaml.ansible",
    [".*/playbooks/.*.yaml"] = "yaml.ansible",
    [".*.tfvars"] = "hcl",
  }
}

vim.api.nvim_create_autocmd("DirChanged", {
  desc = "Run commands in DirChanged event",
  callback = function()
	  require('dap.ext.vscode').load_launchjs('./launch.json', { delve = { 'delve', 'go' } })
	  require('dap.ext.vscode').load_launchjs()
  end,
})
