return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "graphql" })
      end
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {},
    opts = {
      servers = {
        graphql = {
          filetypes = { "graphql", "typescript", "typescriptreact" },
        },
      },
    },
  },
}
