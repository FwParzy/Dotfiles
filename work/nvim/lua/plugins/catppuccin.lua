return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  flavour = "frappe", -- latte, frappe, macchiato, mocha
  config = function()
    vim.cmd([[colorscheme catppuccin]])
  end,
}
