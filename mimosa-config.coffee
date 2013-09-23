exports.config =
  minMimosaVersion:"1.0.0" # 1.0.0-rc.6 is required for optimization to work
  require:
    optimize :
      modules: [
        {name: 'common', include: ['jquery']}
        {name: 'mainOne', exclude: ['common', 'mainTwo']}
        {name: 'mainTwo', exclude: ['common', 'mainThree']}
        {name: 'mainThree', exclude: ['common']}
      ]
