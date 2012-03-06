class SecondTodo.Collections.Todos extends Backbone.Collection
  url: '/api/todos'

  destroyFinished: ->
    @each (model) ->
      if model.get('finished')
        model.destroy()



