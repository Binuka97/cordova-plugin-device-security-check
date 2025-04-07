var DeviceSecurityCheck = {
  isDeviceSecure: function(success, error) {
    cordova.exec(success, error, 'DeviceSecurityCheck', 'isDeviceSecure', []);
  }
};

module.exports = DeviceSecurityCheck;
