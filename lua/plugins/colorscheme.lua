return {
  -- add gruvbox
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
    },
  },

  -- Configure LazyVim to lead gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
