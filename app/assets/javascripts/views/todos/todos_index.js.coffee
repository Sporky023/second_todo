class SecondTodo.Views.TodosIndex extends Backbone.View
  template: JST['todos/index']

  events:
    'submit #new_todo': 'createTodo'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendTodo, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendTodo)
    this

  createTodo: (event) ->
    event.preventDefault()
    attributes = description: $('#new_todo_description').val()
    @collection.create(attributes,
      wait: true
      success: -> $('#new_todo')[0].reset()
      error: @handleError
    )

  handleError: (todo, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages

  appendTodo: (todo) =>
    view = new SecondTodo.Views.Todo(model: todo)
    @$('#todos').append(view.render().el)
