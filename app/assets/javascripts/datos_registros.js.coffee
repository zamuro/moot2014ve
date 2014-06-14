# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#datos_registro_distrito_id').parent().hide()
  distritos = $('#datos_registro_distrito_id').html()
  $('#datos_registro_region_id').change ->
    region = $('#datos_registro_region_id :selected').text()
    escaped_region = region.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(distritos).filter("optgroup[label='#{escaped_region}']").html()
    if options
      $('#datos_registro_distrito_id').html(options)
      $('#datos_registro_distrito_id').parent().show()
    else
      $('#datos_registro_distrito_id').empty()
      $('#datos_registro_distrito_id').parent().hide()
  
