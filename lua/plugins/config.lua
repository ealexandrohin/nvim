return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        tofu_ls = {
          cmd = { "tofu-ls", "serve" },
          filetypes = { "terraform", "terraform-vars" },
          root_markers = { ".terraform", ".git" },
        },
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
        opentofu = {
          command = "tofu",
          args = { "fmt", "-" },
          stdin = true,
        },
      },
      formatters_by_ft = {
        caddy = { "caddy" },
        tf = { "opentofu" },
        hcl = { "opentofu" },
        terraform = { "opentofu" },
        ["terraform-vars"] = { "opentofu" },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        -- sources = {
        --   explorer = {
        --     layout = {
        --       preset = "default",
        --       preview = true,
        --       fullscreen = true,
        --     },
        --   },
        -- },
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
