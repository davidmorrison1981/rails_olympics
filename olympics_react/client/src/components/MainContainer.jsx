var React = require('react');
var EventDropdown = require('./EventDropdown.jsx');
var AthleteDropdown = require('./AthleteDropdown.jsx');
var CountryDropdown = require('./CountryDropdown.jsx');
var DescriptionBox = require('./DescriptionBox.jsx');

var MainContainer = React.createClass({

  getInitialState: function(){
    return{athletes: [], countries:[], events: []}

  },

  setApiData: function(data,keyName){
    var theThing = JSON.parse(data);
    if(keyName === 'athletes'){
      this.setState({athletes: theThing});
    }
    else if(keyName === "events"){
      this.setState({events: theThing});
    }
    else{
          this.setState({countries: theThing});
        }
  },

  componentDidMount: function(){
   this.callApi('athletes');
   this.callApi('countries');
   this.callApi('events');


  },

  callApi: function(route){
    var url ="http://localhost:5000/"+route
    var request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = function(){
      console.log(request.responseText)
      var data = request.responseText;
      this.setApiData(data, route);
    }.bind(this)
    request.send();
  },

  render: function(){
    return(
      <div>
        <h2>Main Container</h2>
        <EventDropdown event={this.state.events}/>
        <AthleteDropdown athlete={this.state.athletes}/>
        <CountryDropdown country={this.state.countries}/>
        <DescriptionBox />
      </div>
      )
  }

})

module.exports = MainContainer;