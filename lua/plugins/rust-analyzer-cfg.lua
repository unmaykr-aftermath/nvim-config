return {
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      opts.config.rust_analyzer.settings["rust-analyzer"] = {
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
      }

      return opts
    end,
  },
}
