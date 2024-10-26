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
