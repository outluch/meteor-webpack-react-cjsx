React = require 'react'
ReactDOM = require 'react-dom'
Dummy = require './dummy/Dummy'


Meteor.startup ->
  ReactDOM.render(<Dummy/>, document.getElementById('root'))