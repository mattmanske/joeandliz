$ ->

  $('#logo > h1').fitText(1.2, {minFontSize: '36px', maxFontSize: '50px'})
  $('#logo > h2').fitText(2.0, {minFontSize: '19px', maxFontSize: '28px'})

  $('#bridalparty > a').click (e) ->
    $('#bridalparty').attr 'data-showing', 1

  $('#bridalparty .headshot-icons li').click (e) ->
    $('#bridalparty').attr 'data-showing', $(@).data 'slide'
