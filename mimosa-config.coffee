exports.config =
  require:
    optimize :
      modules: [
        {name: 'common', include: ['jquery']}
        {name: 'mainOne', exclude: ['common', 'mainTwo']}
        {name: 'mainTwo', exclude: ['common', 'mainThree']}
        {name: 'mainThree', exclude: ['common']}
      ]
