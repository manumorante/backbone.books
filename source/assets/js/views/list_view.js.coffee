class App.ListView extends Backbone.View
  el: $('#app')
  events: 'click .add': 'add'

  initialize: ->
    @collection = new App.List
    @collection.on 'add', @addItem, this
    @template = _.template($('#listTlp').html())
    @render()

  render: ->
    @$el.append '<button class="add btn btn-primary">Add new book</button>'
    @$el.append '<h5>Total refs: <span id="refTotal" class="label label-success">0</span><h5/>'
    @$el.append '<hr>'
    @$el.append '<ul id="list" class="media-list">'

  addItem: (item) ->
    $('#refTotal').html(App.refTotal)
    $('#list').append @template({
      title: item.get('title'),
      author: item.get('author'),
      ref: item.get('ref')
    })

  add: ->
    @collection.addRandomItem()

myView = new App.ListView