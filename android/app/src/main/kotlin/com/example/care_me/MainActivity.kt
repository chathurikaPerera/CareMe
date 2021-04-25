package com.example.care_me
import android.os.Bundle
//import io.flutter.embedding.android.FlutterActivity
//import io.flutter.plugin.common.MethodCall
//import io.flutter.plugin.common.MethodChannel
//import io.flutter.plugins.GeneratedPluginRegistrant
//
//class MainActivity: FlutterActivity() {
//    private val CHANNEL = "com.flutter.care_me/careme";
//
//    override  fun onCreate(saveInstanceState: Bundle?){
//
//        super.onCreate(savedInstanceState)
//        GeneratedPluginRegistrant.registerWith(this)
//
//        MethodChannel(flutterView, CHANNEL).setMethodCallHandler{
//            call: MethodCall, result: MethodChannel.Result ->
//            if(call.method.equals("printy"))
//            {
//                result.success("hello world");
//            }
//        }
//  }
//}
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.flutter.care_me/careme";

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            if (call.method == "method")
            {
                result.success("hello from kotlin world");
            }
        }
    }


}


