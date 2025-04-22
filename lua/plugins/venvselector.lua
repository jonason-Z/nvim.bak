return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python", --optional
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  keys = {
    { "<leader>vc", "<cmd>VenvSelect<cr>" },
  },
  ---@type venv-selector.Config
  opts = {
    search = {
      -- 保留默认搜索
      -- 添加自定义 pyenv 搜索
      custom_pyenv = {
        command = "fd -t d . $HOME/.pyenv/versions --max-depth 1",
      },
      -- 也可以添加更具体的搜索，例如寻找pyenv虚拟环境中的Python解释器
      pyenv_interpreters = {
        command = "fd /bin/python$ $HOME/.pyenv/versions --full-path --color never",
      },
    },
  },
}
