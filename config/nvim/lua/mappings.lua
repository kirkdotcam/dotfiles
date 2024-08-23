require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {desc="Toggle nvim tree"})
map({"n"}, "<leader>gg", function()
  require("nvchad.term").toggle { 
    pos = "float",
    id = "lazyTerm",
    cmd ='lazygit && exit',
    float_opts = {
      border = "none",
      width = 100000,
      height = 100000,
      zindex = 200,
    }
        }
end, {desc="Toggle lazygit"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- 
