class App.ListView extends Backbone.View
  el: $('#app')
  events: 'click .add': 'add'

  initialize: ->
    @collection = new App.List
    @collection.on 'add', @addItem, this
    #this.listenTo(this.collection, 'add', this.update);
    @render()

  render: ->
    @$el.append '<button class="add btn btn-primary">Add</button>'
    @$el.append '<ul class="list"></ul>'

  addItem: (item) ->
    $('.list').append '<li>' + item.get('part1') + ' ' + item.get('part2') + '</li>'

  add: ->
    @collection.addRandomItem()

myView = new App.ListView