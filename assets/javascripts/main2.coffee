define ['jquery'], ($) ->
  $('body').append('<h1>And here is the output from main2</h2>')
  setTimeout ->
    require ['mainThree']
  , 6000