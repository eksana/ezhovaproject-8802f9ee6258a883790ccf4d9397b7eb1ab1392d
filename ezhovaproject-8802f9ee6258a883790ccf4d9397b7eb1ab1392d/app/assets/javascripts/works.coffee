$ ->
  change_trigger = (handler) ->
    $.get
      url: "/works/#{$('select').val()}"
      success: (data) ->
        box = $ '.carousel-inner'
        box.empty()

        data.forEach (file) ->
          box.append "<div class='item'><img src=/assets/pictures/#{file}></div>"

        $($('.item')[0]).addClass('active');

  $('select').change change_trigger
  change_trigger $('select')