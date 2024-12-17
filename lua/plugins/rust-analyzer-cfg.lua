return {
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      opts.config.rust_analyzer.settings["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },

        rustfmt = {
          extraArgs = {
            "+nightly",
          },
        },

        inlayHints = {
          ignoreTraits = {
            "*::OwoColorize",
          },
        },
      }

      return opts
    end,
  },
}
