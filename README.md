MimosaDynamicRequire
======

This example Mimosa app shows how to configure Mimosa to build dynamic module require.js applications.

The app has 4 modules.

1. A `common` module containing common code
2. A `main1` module that waits 5 seconds before dynamically requiring `main2`
3. A `main2` module that waits 5 seconds before dynamically requiring `main3`
3. A `main3` module.

How to Install
--------------

1. `npm install -g mimosa`, version `1.0.0-rc.6` or higher is needed.
2. `git clone https://github.com/dbashford/MimosaDynamicRequire`
3. `cd MimosaDynamicRequire`
4. `mimosa watch -s`
5. Navigate to https://localhost:3000

Keep an eye on your browsers "Net" panel and watch require.js dynamically pull in each module as time passes.

Now, shut down the server.

6. `mimosa watch -som`
7. Navigate to https://localhost:3000 when the build finishes.

Nothing changes from a UI perspective, but now the application has been r.js optimized into the 4 dynamic modules with no code duplication between those modules.

Configuration
-------------

Note that the only configuration necessary is to configure the modules themselves, Mimosa handles all the rest.

```coffeescript
exports.config =
  minMimosaVersion:"1.0.0"
  require:
    optimize :
      modules: [
        {name: 'common', include: ['jquery']}
        {name: 'mainOne', exclude: ['common', 'mainTwo']}
        {name: 'mainTwo', exclude: ['common', 'mainThree']}
        {name: 'mainThree', exclude: ['common']}
      ]
```
