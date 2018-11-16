$ ->
  flashCallback = undefined

  flashCallback = ->
    $('#flash').fadeOut('slow')

  $('#flash').bind 'click', ((_this) ->
    (ev) ->
      $('#flash').fadeOut()
  )(this)
  setTimeout flashCallback, 3000
