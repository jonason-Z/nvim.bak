return {
  {
    "907th/vim-auto-save", -- 插件源
    event = "VimEnter", -- 插件加载时机
    config = function()
      -- 插件的配置可以在这里添加
      vim.g.auto_save = 1 -- 启用自动保存
      vim.g.auto_save_silent = 1 -- 启用静默保存（不显示保存消息）
      vim.g.auto_save_interval = 1 -- 自动保存的时间间隔（单位：秒）
      vim.g.auto_save_events = { "InsertLeave", "TextChanged" } -- 触发自动保存的事件
    end,
  },
}
