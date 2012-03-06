class SecondTodo.Views.Todo extends Backbone.View
  template: JST['todos/todo']
  tagName: 'li'

  render: ->
    console.log('started Views.Todo#render')
    $(@el).html(@template(todo: @model))
    this
