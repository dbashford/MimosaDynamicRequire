exports.config =
  require:                 # configuration for requirejs options.
    optimize :
      overrides: (runConfig) ->
        runConfig.name = runConfig.include[0]
        runConfig.insertRequire = null
        runConfig.include = null
        runConfig.out = runConfig.out.replace(/-built.js$/, ".js")
        if runConfig.name is "main1"
          runConfig.exclude = ["main2"]

        # now return the runConfig. Any changes will be passed along to optimization
        runConfig