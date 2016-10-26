var React = require('react');

var CountryDropdown = React.createClass({

  render: function(){
    var name = this.props.country.map(function(country, index){
      return <option key={index}>{country.country}</option>
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

module.exports = CountryDropdown;