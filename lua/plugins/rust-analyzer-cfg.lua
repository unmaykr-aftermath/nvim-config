return {
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      opts.config.rust_analyzer.settings["rust-analyzer"].rustfmt = {
        extraArgs = {
          "+nightly",
        },
      }
      return opts
    end,
  },
}
