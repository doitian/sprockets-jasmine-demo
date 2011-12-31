#= require jquery
#= require_this

$ ->
  body = $('body')
  counter = 0
  $('#say').click ->
    counter += 1
    $("<p>Hello #{counter}</p>")
      .hide()
      .appendTo(body)
      .fadeIn()
