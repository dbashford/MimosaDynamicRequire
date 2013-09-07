exports.config =
  require:                 # configuration for requirejs options.
    optimize :
      overrides: (runConfig) ->
        console.log """
        Look at me!  I've been called and I've been passed the r.js run config!
        This overrides function call lives in between the mimosa-require steps
        that build the run config and that execute it. So this function gets
        passed the computed and inferred config and has the opportunity to change
        it.  Here's the config!
        """
        console.log JSON.stringify runConfig, null, 2

        # now return the runConfig. Any changes will be passed along to optimization
        runConfig