return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {
      -- preset = "helix",
    },
    -- win = {
    --   -- don't allow the popup to overlap with the cursor
    --   no_overlap = false,
    --   -- width = 1,
    --   height = { min = 22, max = 55 },
    --   -- col = 0,
    --   row = math.huge,
    --   -- border = "none",
    --   padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
    --   title = true,
    --   title_pos = "top",
    --   zindex = 1000,
    --   -- Additional vim.wo and vim.bo options
    --   bo = {},
    --   wo = {
    --     -- winblend = 10, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    --   },
    -- },
    win = {
      padding = { 2, 2, 2, 2 },
      no_overlap = false,
      border = "rounded",
    },
    -- ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  },
}
