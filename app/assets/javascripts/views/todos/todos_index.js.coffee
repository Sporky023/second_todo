class SecondTodo.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  render: ->
    $(@el).html(@template(todos: "Todos go here."))
    this
