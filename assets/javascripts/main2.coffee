define ['jquery', 'twoFile'], ($) ->
  $('body').append('<h1>And here is the output from main2, main3 in 5 seconds...</h2>')
  setTimeout ->
    require ['mainThree']
  , 6000