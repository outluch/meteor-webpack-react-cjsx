# global ReactMeteorData
React = require 'react'
reactMixin = require 'react-mixin'
require './dummy.css'

Hello = require './Hello'
Coffee = require './Coffee'
Items = require './Items'

module.exports = React.createClass
  render: ->
    <div>
      <h1>Welcome to Meteor!</h1>
      <Hello />
      <Coffee />
      <Items />

    </div>