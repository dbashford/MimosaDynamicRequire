exports.config =
  require:
    optimize :
      overrides: (runConfig) ->
        runConfig.name = runConfig.include[0]
        runConfig.insertRequire = null
        runConfig.include = null
        runConfig.out = runConfig.out.replace(/-built.js$/, ".js")
        if runConfig.name is "main1"
          runConfig.exclude = ["main2"]
        runConfig