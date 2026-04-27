return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_page_title = "${name}"
    end,
  },
}
