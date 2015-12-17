class App.List extends Backbone.Collection
  model: App.Item

  addRandomItem: ->
    item = new App.Item
    ++App.refTotal
    item.set
      title: 'Undefined title'
      author: 'Undefined author'
      ref: App.refTotal
    @add item