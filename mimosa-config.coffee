exports.config =
  require:
    optimize :
      overrides: (runConfig) ->
        runConfig.modules = [
          {name: 'common', include: ['jquery']}
          {name: 'mainOne', exclude: ['common', 'mainTwo']}
          {name: 'mainTwo', exclude: ['common', 'mainThree']}
          {name: 'mainThree', exclude: ['common']}
        ]
        runConfig.dir = "./public/javascripts"
        runConfig.keepBuildDir = true
        delete runConfig.insertRequire
        delete runConfig.include
        delete runConfig.out
        delete runConfig.name
        runConfig
