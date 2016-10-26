var React = require('react');
var EventDropdown = require('./EventDropdown.jsx');

var MainContainer = React.createClass({

  render: function(){
    return(
      <div>
        <h2>Main Container</h2>
        <EventDropdown />
      </div>
      )
  }

})

module.exports = MainContainer;