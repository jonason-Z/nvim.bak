return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = { -- 这里是关键！LazyVim 使用 `opts` 覆盖默认配置
    defaults = {
      path_display = "shorten",
      layout_strategy = "horizontal", -- 强制垂直布局
      layout_config = {
        horizontal = {
          preview_cutoff = 30,
          preview_width = 0.5,
          prompt_position = "bottom",
        },
        width = { padding = 1 },
        height = { padding = 1 },
      },
    },
    pickers = {
      find_files = {
        hidden = true, -- 显示隐藏文件
      },
      -- live_grep 的专用配置
      live_grep = {
        additional_args = { "--hidden" }, -- 搜索隐藏文件
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts) -- 确保配置被应用
    -- 可以在此添加自定义快捷键
    -- 如果想使用上方定义的格式，需要使用下方自定的方式唤出才行
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
  end,
}
