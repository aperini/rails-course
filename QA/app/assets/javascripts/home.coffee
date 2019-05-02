# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $(".media").on "click", ->
    # let's change the location of the document
    document.location = $(this).data("target")
    return false

  $(".modal").on "shown.bs.modal", ->
    $(this).find("textarea").focus()

# calls function ready above defined when de page is ready
$(document).ready(ready)

# same for when the page is loaded (related to rails turbolink)
$(document).on "page:load", ready
