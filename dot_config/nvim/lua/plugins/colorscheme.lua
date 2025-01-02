return {
  {
    "EdenEast/nightfox.nvim",
    enabled = true,
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.g.gruvbox_material_background = "medium"
      vim.cmd.colorscheme("nordfox")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
