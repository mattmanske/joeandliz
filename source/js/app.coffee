$ ->

  $('#bridalparty > a').click (e) ->
    $('#bridalparty').attr 'data-showing', 1

  $('#bridalparty .headshot-icons li').click (e) ->
    $('#bridalparty').attr 'data-showing', $(@).data 'slide'
