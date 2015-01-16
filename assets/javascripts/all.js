(function() {
  $(function() {
    var container, toggler;
    container = $("[data-toggle-container]");
    toggler = $("[data-toggle]");
    toggler.on("click", function() {
      container.toggleClass("more");
      return container.toggleClass("less");
    });
    $("[data-toggle='more']").on("click", function() {
      $("[data-toggle-content='less']").fadeOut(400);
      return $("[data-toggle-content='more']").delay(400).fadeIn(400);
    });
    return $("[data-toggle='less']").on("click", function() {
      $("[data-toggle-content='more']").fadeOut(400);
      return $("[data-toggle-content='less']").delay(400).fadeIn(400);
    });
  });

}).call(this);
