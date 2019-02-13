package com.qts.flutter.qtslocation;

import org.json.JSONObject;

import com.amap.api.location.AMapLocation;

import android.content.Context;
import android.util.Log;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.reactivex.functions.Consumer;
import me.boqin.library.XGLocation;

/** QtslocationPlugin */
public class QtslocationPlugin implements MethodCallHandler {

    private Registrar mRegistrar;

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "qtslocation");
    channel.setMethodCallHandler(new QtslocationPlugin(registrar));
  }

  QtslocationPlugin(Registrar registrar){
      mRegistrar = registrar;
  }

  @Override
  public void onMethodCall(MethodCall call, final Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else if(call.method.equals("getLocation")){

        XGLocation.getInstance().searchCurrentLocation(mRegistrar.context())
                .subscribe(new Consumer<AMapLocation>() {
                    @Override
                    public void accept(AMapLocation aMapLocation) throws Exception {
                        JSONObject jsonObject = aMapLocation.toJson(1);
                        Log.d("BQ", jsonObject.toString());
                        result.success(jsonObject.toString());
                    }
                });
    }
  }
}
