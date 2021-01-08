package be.appmire.flutterkeychain

import android.util.Log
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.PluginRegistry.Registrar

class FlutterKeychainPlugin : MethodCallHandler {
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "plugin.appmire.be/flutter_keychain")
            channel.setMethodCallHandler(FlutterKeychainPlugin())
        }
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        try {
        } catch (e: Exception) {
            Log.e("flutter_keychain", "Could not register plugin", e)
        }
    }
}
