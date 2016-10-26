var React = require('react');
var ReactDOM = require('react-dom');
var MainContainer = require('./components/MainContainer.jsx')

window.onload = function(){
  ReactDOM.render(
    <MainContainer/>,
    document.getElementById('app')
  );
}
