require ['common'], ->
  require ['jquery', 'oneFile'], ($) ->
    $('body').append """
    <h1>This is markup from main1</h1>
    <h2>In 5 seconds, something will show up from main2</h2>
    """

    setTimeout ->
      require ['mainTwo']
    , 6000