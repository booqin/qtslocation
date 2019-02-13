class AMapLocation {
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
  double lon;
  double lat;
  int accuracy;
  bool isOffset;
  bool isFixLastLocation;

  AMapLocation(
      {this.altitude,
        this.speed,
        this.bearing,
        this.citycode,
        this.adcode,
        this.country,
        this.province,
        this.city,
        this.district,
        this.road,
        this.street,
        this.number,
        this.poiname,
        this.errorCode,
        this.errorInfo,
        this.locationType,
        this.locationDetail,
        this.aoiname,
        this.address,
        this.poiid,
        this.floor,
        this.description,
        this.time,
        this.provider,
        this.lon,
        this.lat,
        this.accuracy,
        this.isOffset,
        this.isFixLastLocation});

  AMapLocation.fromJson(Map<String, dynamic> json) {
    altitude = json['altitude'];
    speed = json['speed'];
    bearing = json['bearing'];
    citycode = json['citycode'];
    adcode = json['adcode'];
    country = json['country'];
    province = json['province'];
    city = json['city'];
    district = json['district'];
    road = json['road'];
    street = json['street'];
    number = json['number'];
    poiname = json['poiname'];
    errorCode = json['errorCode'];
    errorInfo = json['errorInfo'];
    locationType = json['locationType'];
    locationDetail = json['locationDetail'];
    aoiname = json['aoiname'];
    address = json['address'];
    poiid = json['poiid'];
    floor = json['floor'];
    description = json['description'];
    time = json['time'];
    provider = json['provider'];
    lon = json['lon'];
    lat = json['lat'];
    accuracy = json['accuracy'];
    isOffset = json['isOffset'];
    isFixLastLocation = json['isFixLastLocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['altitude'] = this.altitude;
    data['speed'] = this.speed;
    data['bearing'] = this.bearing;
    data['citycode'] = this.citycode;
    data['adcode'] = this.adcode;
    data['country'] = this.country;
    data['province'] = this.province;
    data['city'] = this.city;
    data['district'] = this.district;
    data['road'] = this.road;
    data['street'] = this.street;
    data['number'] = this.number;
    data['poiname'] = this.poiname;
    data['errorCode'] = this.errorCode;
    data['errorInfo'] = this.errorInfo;
    data['locationType'] = this.locationType;
    data['locationDetail'] = this.locationDetail;
    data['aoiname'] = this.aoiname;
    data['address'] = this.address;
    data['poiid'] = this.poiid;
    data['floor'] = this.floor;
    data['description'] = this.description;
    data['time'] = this.time;
    data['provider'] = this.provider;
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    data['accuracy'] = this.accuracy;
    data['isOffset'] = this.isOffset;
    data['isFixLastLocation'] = this.isFixLastLocation;
    return data;
  }
}