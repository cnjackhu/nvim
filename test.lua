-- Setup
local notify = require("mini.notify")

notify.setup()

vim.notify = notify.make_notify({
  ERROR = { duration = 5000 },
  WARN = { duration = 4000 },
  INFO = { duration = 3000 },
})

-- Show notifications
vim.notify("Error #1", vim.log.levels.ERROR)
vim.notify("Warning #1", vim.log.levels.WARN)
vim.notify("Info #1", vim.log.levels.INFO)

-- Although it is added later,
-- default sort shows it before warning and info
vim.notify("Error #2", vim.log.levels.ERROR)
