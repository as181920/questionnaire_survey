# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@load_question_category_style = () ->
  for ele_question in $(".question_title")
    for ele_answer in $(ele_question).nextAll().find("input[type=checkbox]")
      $(ele_answer).change (event,ui) ->
        $(this)
