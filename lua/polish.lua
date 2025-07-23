-- require('dap-go').setup()

vim.filetype.add {
  pattern = {
    [".*/roles/.*.yml"] = "yaml.ansible",
    [".*/roles/.*.yaml"] = "yaml.ansible",
    [".*/playbooks/.*.yml"] = "yaml.ansible",
    [".*/playbooks/.*.yaml"] = "yaml.ansible",
    [".*.tfvars"] = "hcl",
    [".*.xml.j2"] = "xml",
  }
}

require("resession").add_hook(
  "post_load",
  function()
    require('dap.ext.vscode').load_launchjs(vim.fn.getcwd()..'/launch.json', { delve = { 'delve', 'go' } })
  end
)

