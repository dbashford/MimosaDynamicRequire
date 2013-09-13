exports.config =
  require:
    optimize :
      overrides: (runConfig) ->
        runConfig.modules = [
          {name: 'mainOne', exclude: ['common', 'mainTwo']}
          {name: 'mainTwo', exclude: ['mainThree']}
          {name: 'mainThree', exclude: []}
        ]
        runConfig.dir = "./public/javascripts"
        runConfig.keepBuildDir = true
        delete runConfig.insertRequire
        delete runConfig.include
        delete runConfig.out
        delete runConfig.name
        runConfig
