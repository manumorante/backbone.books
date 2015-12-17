class App.List extends Backbone.Collection
  model: App.Item

  addRandomItem: ->
    item = new App.Item
    item.set
      part1: 'Hello'
      part2: item.get('part2') + ' ' + (new Date).getMilliseconds()
    @add item