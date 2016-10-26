var React = require('react');

var AthleteDropdown = React.createClass({

  render: function(){
   var name = this.props.athlete.map(function(athlete, index){
     return <option key={index}>{athlete.name}</option>
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

module.exports = AthleteDropdown;