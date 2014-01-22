exports.config = {
  minMimosaVersion:"2.0.0",
  modules: [
    'bower',
    'jshint',
    'csslint',
    'minify-js',
    'minify-css',
    'server',
    'live-reload',
    'stylus',
    'copy',
    'coffeescript'],
  require: {
    optimize : {
      modules: [
        {name: 'common', include: ['jquery']},
        {name: 'mainOne', exclude: ['common', 'mainTwo']},
        {name: 'mainTwo', exclude: ['common', 'mainThree']},
        {name: 'mainThree', exclude: ['common']}
      ]
    }
  }
}
