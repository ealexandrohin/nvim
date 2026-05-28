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
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    opts = {
      files = {
        hidden = true,
        no_ignore = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        yamlls = {
          settings = {
            yaml = {
              format = {
                printWidth = 120,
              },
              customTags = {
                "!reference sequence",
              },
            },
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "caddy",
      },
      auto_install = true,
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        caddy = {
          command = "caddy",
          args = { "fmt", "-" },
          stdin = true,
        },
      },
      formatters_by_ft = {
        caddy = { "caddy" },
      },
    },
  },
  {
    "folke/ts-comments.nvim",
    opts = {
      lang = {
        caddy = "# %s",
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
