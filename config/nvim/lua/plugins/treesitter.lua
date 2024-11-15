if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      additional_vim_regex_highlighting = { "markdown" },
    },
    ensure_installed = {
      "lua",
      "vim",
      "markdown",
      "query",
      "markdown_inline",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
