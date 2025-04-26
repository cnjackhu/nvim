return {
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {},
  },

  { "brenoprata10/nvim-highlight-colors" },

  { "tpope/vim-projectionist" },
  "nanotee/zoxide.vim",

  { "preservim/vim-pencil" },

  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup({
        max_lines = 5,
      })
    end,
  },

  {
    "RRethy/vim-illuminate",
    config = function()
      require("illuminate")
    end,
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {
      jump = {
        autojump = true,
      },
      modes = {
        char = {
          jump_labels = true,
          multi_line = false,
        },
      },
    },
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function()   require("flash").jump()
end,              desc = "Flash" },
      { "S",     mode = { "n" },           function()   require("flash").treesitter()
end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function()   require("flash").remote()
end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function()   require("flash").treesitter_search()
end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function()   require("flash").toggle()
end,            desc = "Toggle Flash Search" },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup({})
    end,
    lazy = true,
    event = "VeryLazy",
  },

  { "nvim-treesitter/nvim-treesitter-textobjects" },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "json",
          "python",
          "regex",
          "html",
          "bash",
          "markdown",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = "<C-CR>",
            node_decremental = "<bs>",
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ["aa"] = "@parameter.outer",
              ["ia"] = "@parameter.inner",
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]]"] = "@class.outer",
            },
            goto_next_end = {
              ["]M"] = "@function.outer",
              ["]["] = "@class.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[["] = "@class.outer",
            },
            goto_previous_end = {
              ["[M"] = "@function.outer",
              ["[]"] = "@class.outer",
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ["<leader>p"] = "@parameter.inner",
            },
            swap_previous = {
              ["<leader>ps"] = "@parameter.inner",
            },
          },
        },
      })
    end,
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "catppuccin/nvim",
  },

  "tpope/vim-repeat",

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        config = function(_, opts)
          local dap = require("dap")
          local dapui = require("dapui")
          dap.set_log_level("INFO")
          dapui.setup(opts)
          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open({})
          end
          dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close({})
          end
          dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close({})
          end
        end,
      },
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },
      {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = "mason.nvim",
        cmd = { "DapInstall", "DapUninstall" },
        opts = {
          automatic_installation = true,
          handlers = {},
          ensure_installed = {
            "python",
          },
        },
      },
      { "jbyuki/one-small-step-for-vimkind", module = "osv" },
    },
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },

  {
    "tummetott/unimpaired.nvim",
    config = function()
      require("unimpaired").setup()
    end,
  },
  "mg979/vim-visual-multi",
}
