# qtslocation

v0.2

A new flutter plugin project.

## dart

在pubspec.yaml下添加依赖：

```
dependencies:
  ……
  qtslocation:
    git:
      url: git@github.com:booqin/qtslocation.git
      ref: version
```

dart中通过Qtslocation类异步获取位置：

```js
  void _getLocation() {
    Qtslocation.location.then((location){
      setState(() {
        _location = location;
      });
    });
  }
```

定位成功后，获取到AMapLocation类，数据结构如下：

```
  int altitude;
  int speed;
  int bearing;
  String citycode;
  String adcode;
  String country;
  String province;
  String city;
  String district;
  String road;
  String street;
  String number;
  String poiname;
  int errorCode;
  String errorInfo;
  int locationType;
  String locationDetail;
  String aoiname;
  String address;
  String poiid;
  String floor;
  String description;
  int time;
  String provider;
  String lon;
  String lat;
  int accuracy;
  bool isOffset;
  bool isFixLastLocation;
```

## Android

定位基于高德，在Android平台需要完成

- 高德key
- 权限申请

高德key的获取和配置参考官网教程[获取key](https://lbs.amap.com/api/android-location-sdk/guide/create-project/get-key)

设置key后需要保证debug或release包含正确的签名。

另外，在高于6.0版本中需要继续权限申请，涉及以下敏感权限：

```
//SDK在Android 6.0下需要进行运行检测的权限如下：
Manifest.permission.ACCESS_COARSE_LOCATION,
Manifest.permission.ACCESS_FINE_LOCATION,
Manifest.permission.WRITE_EXTERNAL_STORAGE,
Manifest.permission.READ_EXTERNAL_STORAGE,
Manifest.permission.READ_PHONE_STATE

```

附上全部的权限声明：

todo

### 混淆
todo

## iOS

todo