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
          autoimport = {
            exclude = {
              "tap::Conv",
              "tap::Pipe",
              "tap::Tap",
              "tap::TapFallible",
              "tap::TapOptional",
              "tap::TryConv",
            },
          },
          excludeTraits = {
            "owo_colors::OwoColorize",
            "color_eyre::owo_colors::OwoColorize",
          },
        },

        rustfmt = {
          extraArgs = {
            "+nightly",
          },
        },

        inlayHints = {
          ignoreTraits = {
            "owo_colors::OwoColorize",
          },
        },
      }

      return opts
    end,
  },
}
