class SecondTodo.Routers.Todos extends Backbone.Router
  routes:
    '': 'index'
    'todos/:id': 'show'

  initialize: ->
    @collection = new SecondTodo.Collections.Todos()
    @collection.reset($('#todo_list').data('todos'))

  index: ->
    view = new SecondTodo.Views.TodosIndex(collection: @collection)
    $('#todo_list').html(view.render().el)

  show: (id) ->
    alert "Todo #{id}"
