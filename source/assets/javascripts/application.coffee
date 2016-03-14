#= require filename.coffee

DEBUG = true
SLIDER_COUNT= 12


$(document).ready () ->
  console.log "start"

  # get current values from server and set sliders to it

  $.getJSON 'get_lights', (data) ->
    if data
      $.each data.lights, (e,i) ->
        $("#s#{ e+1 }")[0].value = Number(i)
    else
      console.log "SERVER PROBLEM: ", data

  # get values from sliders and send them to server
 
  $('#sliders input[type=range]').on 'click touchend', (e) ->

    $.getJSON 'set_light', { light: "#{ e.target.id.split('s')[1] }" , value: e.target.value }, (data) ->
     console.log("got result:", data) if DEBUG?

    $('#debug').append("Slider #{ e.target.id } has new value: #{ e.target.value }<br/>") if DEBUG?


  $('#btns input#all_on').on 'click touchend', (e) ->

    $.getJSON 'set_light', { all: "on" }, (data) ->
     console.log("got result:", data) if DEBUG?

    $("#s#{ i }")[0].value = 100 for i in [1..SLIDER_COUNT]

    $('#debug').append("All lights on<br/>") if DEBUG?

  $('#btns input#all_off').on 'click touchend', (e) ->

    $.getJSON 'set_light', { all: "off" }, (data) ->
     console.log("got result:", data) if DEBUG?

    $("#s#{ i }")[0].value = 0 for i in [1..SLIDER_COUNT]

    $('#debug').append("All lights off<br/>") if DEBUG?

