return {
  {
    "Wansmer/treesj",
    keys = {
      {
        "<leader>cj",
        function()
          require("treesj").toggle()
        end,
        desc = "Split/Join Block",
      },
      {
        "<leader>cJ",
        function()
          require("treesj").toggle({ split = { recursive = true } })
        end,
        desc = "Split/Join Block Recursively",
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({
        use_default_keymaps = false,
      })
    end,
  },
}
