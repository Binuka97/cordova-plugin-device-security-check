# cordova-plugin-device-security-check

A Cordova plugin to determine whether the device has a secure lock mechanism configured, such as a PIN, pattern, password, fingerprint, or Face ID.

---

## 🔐 Features

- Detect if the device has any secure lock screen mechanism.
- Supports PIN, password, pattern, fingerprint (Touch ID), and Face ID.
- Works on both Android and iOS.

---

## 📦 Installation

Install the plugin using the Cordova CLI:

```bash
cordova plugin add cordova-plugin-device-security-check
```

---

## 💻 Usage

```javascript
DeviceSecurityCheck.isDeviceSecure(
  function(isSecure) {
    if (isSecure) {
      console.log("Device is secured with lock screen.");
    } else {
      console.log("No secure lock screen set on device.");
    }
  },
  function(error) {
    console.error("Error checking device security:", error);
  }
);
```

---

## 📱 Platforms Supported

- ✅ Android
- ✅ iOS

---

## 📘 API

### `DeviceSecurityCheck.isDeviceSecure(successCallback, errorCallback)`

Checks whether the device has any secure lock mechanism enabled.

#### **Parameters:**
- `successCallback`: Function that receives a boolean (`true` if secure, `false` if not).
- `errorCallback`: Function that receives an error message if the check fails.

---

## 🛠️ How It Works

### Android

Uses [`KeyguardManager.isKeyguardSecure()`](https://developer.android.com/reference/android/app/KeyguardManager#isKeyguardSecure()) to detect whether a secure lock screen is set (PIN, pattern, password, fingerprint, etc.).

### iOS

Uses [`LocalAuthentication` framework](https://developer.apple.com/documentation/localauthentication) with `canEvaluatePolicy:` to check if any authentication mechanism (passcode, Face ID, or Touch ID) is set.

---

## 📄 License

This project is licensed under the MIT License.

---

## 🙋‍♂️ Author

Developed by **Binuka Kamesh**

Feel free to submit issues or pull requests to improve the plugin.
