var React = require('react');

var EventDropdown = React.createClass({

  render: function(){

    var name = this.props.event.map(function(event, index){
      return <option key={index}>{event.name}</option>
    })

    return(
      <div>
        <select>
          {name}
        </select>
      </div>
      )    
  }

})

module.exports = EventDropdown;