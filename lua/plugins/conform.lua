return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          lua = { "stylua" },
          json = { { "prettierd", "prettier", stop_after_first = true } },
          markdown = { { "prettierd", "prettier", stop_after_first = true } },
          bash = { "beautysh" },
          yaml = { "yamlfix" },
          toml = { "taplo" },
          sh = { "shellcheck" },
          python = { "isort", "black" },
        },
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500
        } 
      })

      vim.keymap.set({ "n", "v" }, "<leader>l", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end, { desc = "Format file or range " })
    end,
  },
}
