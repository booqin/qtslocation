package com.qts.flutter.qtslocationexample;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

/**
 * TODO
 * Created by BoQin on 2019/2/13.
 * Modified by BoQin
 *
 * @Version
 */
public class FlutterMainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
    }
}
