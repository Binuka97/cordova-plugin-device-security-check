package com.example.devicesecuritycheck;

import android.app.KeyguardManager;
import android.content.Context;

import org.apache.cordova.*;
import org.json.JSONArray;

public class DeviceSecurityCheck extends CordovaPlugin {
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) {
        if (action.equals("isDeviceSecure")) {
            Context context = this.cordova.getActivity().getApplicationContext();
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
            boolean isSecure = keyguardManager.isKeyguardSecure();
            callbackContext.success(isSecure ? 1 : 0);
            return true;
        }
        return false;
    }
}
