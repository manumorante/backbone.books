# Define namespace
window.App ||= {}

App.refTotal = 0

# Template settings
_.templateSettings = interpolate: /\{\{(.+?)\}\}/g

# Example use;
#  template = _.template('Hello {{ name }}!')
#  template name: 'Mustache'