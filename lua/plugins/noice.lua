-- return {
--   {
--     "folke/noice.nvim",
--     event = "VeryLazy",
--     opts = {
--       routes = {
--         {
--           filter = { event = "notify", find = "No information available" },
--           opts = { skip = true },
--         },
--       },
--       presets = {
--         lsp_doc_border = true,
--         long_message_to_split = false,
--       },
--     },
--     dependencies = {
--       "MunifTanjim/nui.nvim",
--       "rcarriga/nvim-notify",
--     },
--   },
-- }

return {
  "folke/noice.nvim",
  event = "VeryLazy", -- when to load
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    -- 👇 plugin setup options
    views = {
      cmdline_popup = {
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
      },
      split = {
        enter = true,
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          min_height = 13,
        },
        view = "popup",
      },
    },
  },
}
