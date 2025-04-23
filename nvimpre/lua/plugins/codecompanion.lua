return {
  "olimorris/codecompanion.nvim",
  opts = {
    strategies = {
      chat = {
        adapter = "deepseek",
      },
      inline = {
        adapter = "deepseek",
      },
      cmd = {
        adapter = "deepseek",
      },
    },
    adapters = {
      deepseek = function()
        return require("codecompanion.adapters").extend("deepseek", {
          env = {
            api_key = os.getenv("DEEPSEEK_API_KEY"),
          },
        })
      end,
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
