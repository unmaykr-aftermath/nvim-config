return {
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "rust" })
      end
    end,
  },
  {
    "AstroNvim/astrolsp",
    optional = true,
    opts = {
      -- handlers = { rust_analyzer = false }, -- disable setup of `rust_analyzer`
      ---@diagnostic disable: missing-fields
      config = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              check = {
                command = "clippy",
              },

              cargo = {
                allFeatures = true,
              },

              completion = {
                excludeTraits = {
                  "core::borrow::Borrow",
                  "core::borrow::BorrowMut",
                  "std::borrow::Borrow",
                  "std::borrow::BorrowMut",
                  "owo_colors::OwoColorize",
                  "color_eyre::owo_colors::OwoColorize",
                },
              },

              rustfmt = {
                extraArgs = {
                  "+nightly",
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        crates = { enabled = true },
      },
      lsp = {
        enabled = true,
        on_attach = function(...) require("astrolsp").on_attach(...) end,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
}
