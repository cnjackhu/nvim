return {
  "gbprod/yanky.nvim",
  opts = {},
  dependencies = { "folke/snacks.nvim" },
  keys = {
    {
      "<leader>,",
      function()
        Snacks.picker.yanky()
      end,
      mode = { "n", "x" },
      desc = "Open Yank History",
    },
  },
  system_clipboard = {
    sync_with_ring = false,
    clipboard_register = nil,
  },
}
