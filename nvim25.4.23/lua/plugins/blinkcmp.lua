return {
  "saghen/blink.cmp",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  event = "VeryLazy",
  config = function()
    require("blink.cmp").setup({
      cmdline = {
        keymap = {
          ["<CR>"] = { "select_and_accept", "fallback" },
        },
        completion = {
          menu = { auto_show = true },
          ghost_text = { enabled = false },
        },
      },
    })
  end,
}
