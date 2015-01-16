$ ->
  container = $("[data-toggle-container]")
  toggler = $("[data-toggle]")

  toggler.on "click", ->
    container.toggleClass("more")
    container.toggleClass("less")

  $("[data-toggle='more']").on "click", ->
    $("[data-toggle-content='less']").fadeOut(400)
    $("[data-toggle-content='more']").delay(400).fadeIn(400)

  $("[data-toggle='less']").on "click", ->
    $("[data-toggle-content='more']").fadeOut(400)
    $("[data-toggle-content='less']").delay(400).fadeIn(400)
