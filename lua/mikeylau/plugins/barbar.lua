return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      vim.g.barbar_auto_setup = false

      local keymap = vim.keymap

      keymap.set("n", "gt", "<cmd>BufferNext<cr>", { desc = "Next tab", silent = true, noremap = true })
      keymap.set("n", "gT", "<cmd>BufferPrevious<cr>", { desc = "Previous tab", silent = true, noremap = true })
    end,
    opts = {
    },
  },

}
