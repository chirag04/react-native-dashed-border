/**
 * @providesModule DashedBorder
 * @flow
 */

'use strict';

var ReactIOSViewAttributes = require('ReactIOSViewAttributes');
var createReactIOSNativeComponentClass = require('createReactIOSNativeComponentClass');
var merge = require('merge');
var deepDiffer = require('deepDiffer');

var DashedBorder = createReactIOSNativeComponentClass({
  validAttributes: merge(ReactIOSViewAttributes.UIView, {
    color:           {diff: deepDiffer},
    lineDashPattern: {diff: deepDiffer},
  }),
  uiViewClassName: 'RNDashedBorder',
});

module.exports = DashedBorder;