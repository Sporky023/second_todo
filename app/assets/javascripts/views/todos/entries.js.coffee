class SecondTodo.Views.Todo extends Backbone.View
  template: JST['todos/todo']
  tagName: 'li'

  initialize: ->
    @model.on('destroy', @unrender, this)

  events:
    'click input[type="checkbox"]': 'updateFinished'
    'click span.clear': 'clear'

  render: ->
    $(@el).html(@template(todo: @model))
    this

  unrender: ->
    $(@el).remove()

  updateFinished: ->
    attributes = {'finished': @$('input').val()}
    @model.set(attributes)
    @model.save()

  clear: ->
    @model.destroy()
