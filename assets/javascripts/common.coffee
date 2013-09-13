requirejs.config
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    jquery: 'vendor/jquery/jquery'
    mainOne: "main1"
    mainTwo: "main2"
    mainThree: "main3"

  modules:
    name: 'mainOne'
    exclude: ['common']
    name: 'mainTwo'
    exclude: ['common']
    name: 'mainThree'
    exclude: ['common', 'mainTwo']
  priority: ['common']