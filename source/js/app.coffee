$ ->

  $('#logo > h1').fitText(1.2, {minFontSize: '36px', maxFontSize: '50px'})
  $('#logo > h2').fitText(2.0, {minFontSize: '19px', maxFontSize: '28px'})

  $('#bridalparty > a').click (e) ->
    $('#bridalparty').attr 'data-showing', 1

  $('#bridalparty .headshot-icons li').click (e) ->
    $('#bridalparty').attr 'data-showing', $(@).data 'slide'

  # Form Submit

  dB = new Firebase('https://joeandliz.firebaseIO.com/');

  $('form').submit (e) ->
    e.preventDefault()
    btn = $('button[type="submit"]')
    
    data =
      code:    $('input[name="invite-code"]').val()
      email:   $('input[name="email"]').val()
      people:  $('input[name="who"]').val()
      message: $('textarea[name="message"]').val()
      nodice:  $('input[name="no_dice"]').is(':checked')
    
    btn.text('...sending...').addClass('loading')
    dB.push data, (error) ->
      btn.removeAttr('class')
      if (error)
        btn.text('Error!').addClass('error')
        setTimeout () ->
          btn.html('Try Again').removeAttr('class')
        , 1750
      else
        btn.text('Awesome, Thanks!').addClass('success')
        $('input, textarea, button', 'form').attr('disabled', true)

  # Video Interactions

  $('.cover-image').click ->
    video = $('iframe')[0]
    $f(video).api 'play'
    $(@).addClass 'fading'
    setTimeout ( ->
      $('iframe').addClass 'playing'
    ), 1000
