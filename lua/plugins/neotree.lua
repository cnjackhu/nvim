return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      {
        "\\",
        function()
          require("neo-tree.command").execute({ toggle = true })
        end,
        desc = "NeoTree reveal",
        silent = true,
      },
    },
    opts = {
      filesystem = {
        reveal_force_cwd = true,
        window = {
          mappings = {
            ["<esc>"] = "close_window",
          },
        },
      },
    },
  },
}
