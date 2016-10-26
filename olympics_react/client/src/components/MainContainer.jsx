var React = require('react');
var EventDropdown = require('./EventDropdown.jsx');
var AthleteDropdown = require('./AthleteDropdown.jsx');
var CountryDropdown = require('./CountryDropdown.jsx');
var DescriptionBox = require('./DescriptionBox.jsx');

var MainContainer = React.createClass({

  render: function(){
    return(
      <div>
        <h2>Main Container</h2>
        <EventDropdown />
        <AthleteDropdown />
        <CountryDropdown />
        <DescriptionBox />
      </div>
      )
  }

})

module.exports = MainContainer;