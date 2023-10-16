
"use strict";

let SetSleeping = require('./SetSleeping.js')
let SetBrightness = require('./SetBrightness.js')
let SetBool = require('./SetBool.js')
let SetExposure = require('./SetExposure.js')
let SetBinning = require('./SetBinning.js')
let GetCamProperties = require('./GetCamProperties.js')
let SetROI = require('./SetROI.js')
let SetGain = require('./SetGain.js')
let SetGamma = require('./SetGamma.js')

module.exports = {
  SetSleeping: SetSleeping,
  SetBrightness: SetBrightness,
  SetBool: SetBool,
  SetExposure: SetExposure,
  SetBinning: SetBinning,
  GetCamProperties: GetCamProperties,
  SetROI: SetROI,
  SetGain: SetGain,
  SetGamma: SetGamma,
};
