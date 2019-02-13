package com.qts.flutter.qtslocationexample;

import com.boqin.permissionapi.RuntimePermission;
import com.boqin.runtimepermissions.PermissionActivity;

import android.Manifest;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import io.flutter.app.FlutterActivity;

@PermissionActivity({Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.READ_PHONE_STATE, Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.READ_EXTERNAL_STORAGE})
public class MainActivity extends FlutterActivity {

  private View mBt;
  private TextView mContent;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);
    mBt = findViewById(R.id.go);
    mContent = findViewById(R.id.content);


    mBt.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        Intent intent = new Intent(MainActivity.this, FlutterMainActivity.class);
        startActivity(intent);
      }
    });

    RuntimePermission.tryPermissionByAnnotation(this);

  }

}
