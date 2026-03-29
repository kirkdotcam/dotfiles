-- ~/.config/nvim/lua/plugins/doing.lua
return {
  {
    "Hashino/doing.nvim",
    cmd = { "Do", "Done" },
    keys = {
      { "<leader>da", function() require("doing").add() end, desc = "[D]oing: [A]dd" },
      { "<leader>dn", function() require("doing").done() end, desc = "[D]oing: Do[n]e" },
      { "<leader>de", function() require("doing").edit() end, desc = "[D]oing: [E]dit" },
      { "<leader>dt", function() require("doing").toggle() end, desc = "[D]oing: [T]oggle" },
      {
        "<leader>ds",
        function()
          local doing = require "doing"
          vim.notify(doing.status(true), vim.log.levels.INFO, { title = "Doing:", icon = "" })
        end,
        desc = "[D]oing: [S]tatus",
      },
    },
    opts = {
      message_timeout = 2000,
      doing_prefix = "Doing: ",
      ignored_buffers = { "NvimTree", "neo-tree" },
      show_remaining = true,
      show_messages = true,
      edit_win_config = {
        width = 50,
        height = 15,
        border = "rounded",
      },
      winbar = { enabled = true },
      store = {
        file_name = ".tasks",
        sync_tasks = false,
      },
    },
  },
}
