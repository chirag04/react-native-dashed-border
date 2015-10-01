# react-native-dashed-border

Very simple native component that gives you dashed borders. Copied from brentvatne example [here](https://github.com/brentvatne/react-native-dashed-border-example)

### Add it to your ios project

1. Run `npm install react-native-dashed-border --save`
2. Open your project in XCode, right click on `Libraries` and click `Add
   Files to "Your Project Name"` [(Screenshot)](http://url.brentvatne.ca/jQp8) then [(Screenshot)](http://url.brentvatne.ca/1gqUD).
3. Add `libRNDashedBorder.a` to `Build Phases -> Link Binary With Libraries`
   [(Screenshot)](http://url.brentvatne.ca/17Xfe).
4. Whenever you want to use it within React code now you can: `var DashedBorder = require('react-native-dashed-border');`

### Add it to your android project

Just ``npm install react-native-dashed-border`` and require should work.

### Note
1. lineDashPattern is not supported on android.

## Example

```javascript
var React = require('react-native');
var DashedBorder = require('react-native-dashed-border');

var DashedBorderExampleApp = React.createClass({
  render: function() {
    return (
      <DashedBorder color={React.processColor('#343434')} lineDashPattern={[4,2]} lineWidth={1.5} style={styles.container}>
        <Image source={require('image!announcement')} style={styles.image} />
      </DashedBorder>
    );
  }
});
```

![Demo](https://raw.githubusercontent.com/brentvatne/react-native-dashed-border-example/master/example.png)


