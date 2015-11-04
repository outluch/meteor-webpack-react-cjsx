React = require 'react'
ItemsCollection = require '../collections/items'

# access ItemsCollection in chrome console
window.ItemsCollection = ItemsCollection

module.exports = React.createClass
  mixins: [ReactMeteorData]
  getMeteorData: ->
    items: ItemsCollection.find().fetch()
  addItem: ->
    ItemsCollection.insert {}

  render: ->
    <div>
      <h2>items</h2>
      <ul>
        { @data.items.map (item) -> <li key={item._id}>{item._id}</li>}
      </ul>
      <button onClick={@addItem}>add item</button>
    </div>