class SecondTodo.Routers.Todos extends Backbone.Router
  routes:
    '': 'index'
    'todos/:id': 'show'

  index: ->
    view = new SecondTodo.Views.TodosIndex()
    $('#todo_list').html(view.render().el)

  show: (id) ->
    alert "Todo #{id}"
