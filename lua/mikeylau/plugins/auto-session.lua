return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Documents", "~/Desktop", "~/Downloads" }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<cr>", { desc = "Restore last session" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<cr>", { desc = "Save session" })
  end
}
