return {
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      opts.config.rust_analyzer.settings["rust-analyzer"].rustfmt = {
        extraArgs = {
          "+nightly",
        },
      }

      opts.config.rust_analyzer.settings["rust-analyzer"].inlayHints = {
        ignoreTraits = {
          "*::OwoColorize",
        },
      }

      opts.config.rust_analyzer.settings["rust-analyzer"].cargo = {
        features = {
          "all",
        },
      }

      return opts
    end,
  },
}
