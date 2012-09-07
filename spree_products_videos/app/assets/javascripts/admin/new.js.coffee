($ '#cancel_link').click (event) ->
  event.preventDefault()
  ($ '#new_video_link').show()
  ($ '#videos').html('')