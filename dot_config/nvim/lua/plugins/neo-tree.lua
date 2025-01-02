return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        modified = {
          symbol = "~",
        },
        git_status = {
          symbols = {
            -- Change type
            added = "✚",
            modified = "~",
            deleted = "✖",
            renamed = "",
            -- Status type
            untracked = "?",
            ignored = "",
            unstaged = "",
            staged = "☑",
            conflict = "",
          },
        },
      },
      enable_git_status = false,
      sources = { "filesystem", "git_status" },
    },
  },
}
