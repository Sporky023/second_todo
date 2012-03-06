window.SecondTodo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new SecondTodo.Routers.Todos
    Backbone.history.start()

$(document).ready ->
  SecondTodo.init()
