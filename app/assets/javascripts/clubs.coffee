# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready page:load", ->
  $('form').on 'click', '.remove_field', (event) ->
    event.preventDefault()
    console.log('click remove')
    $(this).prev('input[type=hidden]').val('true')
    $(this).closest('fieldset').hide()
    $(this).closest('fieldset').hide()

  $('form').on 'click', '.Add_field', (event) ->
    event.preventDefault()
    register_count = $('div.new_register fieldset.register').length
    if register_count < 25
      console.log 'Se puede'
      time = new Date().getTime()
      regexp = new RegExp($(this).data('id'), 'g')
      $(this).before($(this).data('fields').replace(regexp, time))
    else
      console.log 'No se puede'
      alert '' + register_count + ' Registros agregados. Ha llegado al numero máximo de registros para realizar esta inscripción'