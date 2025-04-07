var exec = require('cordova/exec');

module.exports = {
  isDeviceSecure: function(success, error) {
    exec(success, error, 'DeviceSecurityCheck', 'isDeviceSecure', []);
  }
};
