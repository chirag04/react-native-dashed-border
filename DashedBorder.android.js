'use strict'

var React = require('react-native')
var {
  View,
} = React

var DashedBorder = React.createClass({
  render: function() {
    var borderStyle = {
      borderRadius: 1, // hack for borderStyle.
      borderWidth: 1,
      borderStyle: 'dashed',
      borderColor: this.props.color,
    }
    return (
      <View style={[this.props.style, borderStyle]}>
        {this.props.children}
      </View>
    )
  },
})

module.exports = DashedBorder;
