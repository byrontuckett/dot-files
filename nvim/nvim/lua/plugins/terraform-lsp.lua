return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      terraformls = {
        filetypes = { "terraform", "tf" },
        root_dir = require("lspconfig.util").root_pattern(".terraform", ".git"),
      },
    },
  },
}
