React = require 'react'

module.exports = React.createClass
  getInitialState: -> counter: 0

  inc: ->
    console.log 'inc'
    @setState counter: @state.counter + 1

  render: ->
    <div>
      <button onClick={@inc}>Click Me</button>
      <p>You've pressed the button {@state.counter} times.</p>
    </div>