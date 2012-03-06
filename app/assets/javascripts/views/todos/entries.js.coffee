class SecondTodo.Views.Todo extends Backbone.View
  template: JST['todos/todo']
  tagName: 'li'

  events:
    'click input[type="checkbox"]': 'updateFinished'

  render: ->
    $(@el).html(@template(todo: @model))
    this

  updateFinished: ->
    attributes = {'finished': @$('input').val()}
    @model.set(attributes)
    @model.save()
