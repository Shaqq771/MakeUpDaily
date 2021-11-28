List<StoreModel> storeFromJson(dynamic res) {
  final data = res["stores"];
  return List<StoreModel>.from(data.map((x) => StoreModel.fromJson(x)));
}

class StoreModelStoresStoreHours {
  String? closedDays;
  String? fridayHours;
  String? mondayHours;
  String? saturdayHours;
  String? sundayHours;
  String? textColor;
  String? thursdayHours;
  String? timeZone;
  String? tuesdayHours;
  String? wednesdayHours;

  StoreModelStoresStoreHours({
    this.closedDays,
    this.fridayHours,
    this.mondayHours,
    this.saturdayHours,
    this.sundayHours,
    this.textColor,
    this.thursdayHours,
    this.timeZone,
    this.tuesdayHours,
    this.wednesdayHours,
  });
  StoreModelStoresStoreHours.fromJson(Map<String, dynamic> json) {
    closedDays = json['closedDays']?.toString();
    fridayHours = json['fridayHours']?.toString();
    mondayHours = json['mondayHours']?.toString();
    saturdayHours = json['saturdayHours']?.toString();
    sundayHours = json['sundayHours']?.toString();
    textColor = json['textColor']?.toString();
    thursdayHours = json['thursdayHours']?.toString();
    timeZone = json['timeZone']?.toString();
    tuesdayHours = json['tuesdayHours']?.toString();
    wednesdayHours = json['wednesdayHours']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['closedDays'] = closedDays;
    data['fridayHours'] = fridayHours;
    data['mondayHours'] = mondayHours;
    data['saturdayHours'] = saturdayHours;
    data['sundayHours'] = sundayHours;
    data['textColor'] = textColor;
    data['thursdayHours'] = thursdayHours;
    data['timeZone'] = timeZone;
    data['tuesdayHours'] = tuesdayHours;
    data['wednesdayHours'] = wednesdayHours;
    return data;
  }
}

class StoreModelStoresStoreHeroImages {
  String? componentName;
  int? componentType;
  bool? enableTesting;
  String? height;
  String? imageId;
  String? imagePath;
  String? name;
  bool? testEnabled;
  String? width;

  StoreModelStoresStoreHeroImages({
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.height,
    this.imageId,
    this.imagePath,
    this.name,
    this.testEnabled,
    this.width,
  });
  StoreModelStoresStoreHeroImages.fromJson(Map<String, dynamic> json) {
    componentName = json['componentName']?.toString();
    componentType = json['componentType']?.toInt();
    enableTesting = json['enableTesting'];
    height = json['height']?.toString();
    imageId = json['imageId']?.toString();
    imagePath = json['imagePath']?.toString();
    name = json['name']?.toString();
    testEnabled = json['testEnabled'];
    width = json['width']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['componentName'] = componentName;
    data['componentType'] = componentType;
    data['enableTesting'] = enableTesting;
    data['height'] = height;
    data['imageId'] = imageId;
    data['imagePath'] = imagePath;
    data['name'] = name;
    data['testEnabled'] = testEnabled;
    data['width'] = width;
    return data;
  }
}

class StoreModelStoresCurbsideHours {
  String? closedDays;
  String? fridayHours;
  String? mondayHours;
  String? saturdayHours;
  String? sundayHours;
  String? textColor;
  String? thursdayHours;
  String? timeZone;
  String? tuesdayHours;
  String? wednesdayHours;

  StoreModelStoresCurbsideHours({
    this.closedDays,
    this.fridayHours,
    this.mondayHours,
    this.saturdayHours,
    this.sundayHours,
    this.textColor,
    this.thursdayHours,
    this.timeZone,
    this.tuesdayHours,
    this.wednesdayHours,
  });
  StoreModelStoresCurbsideHours.fromJson(Map<String, dynamic> json) {
    closedDays = json['closedDays']?.toString();
    fridayHours = json['fridayHours']?.toString();
    mondayHours = json['mondayHours']?.toString();
    saturdayHours = json['saturdayHours']?.toString();
    sundayHours = json['sundayHours']?.toString();
    textColor = json['textColor']?.toString();
    thursdayHours = json['thursdayHours']?.toString();
    timeZone = json['timeZone']?.toString();
    tuesdayHours = json['tuesdayHours']?.toString();
    wednesdayHours = json['wednesdayHours']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['closedDays'] = closedDays;
    data['fridayHours'] = fridayHours;
    data['mondayHours'] = mondayHours;
    data['saturdayHours'] = saturdayHours;
    data['sundayHours'] = sundayHours;
    data['textColor'] = textColor;
    data['thursdayHours'] = thursdayHours;
    data['timeZone'] = timeZone;
    data['tuesdayHours'] = tuesdayHours;
    data['wednesdayHours'] = wednesdayHours;
    return data;
  }
}

class StoreModelStoresAddress {
  String? address1;
  String? address2;
  String? city;
  String? country;
  String? crossStreet;
  String? fax;
  String? mallName;
  String? phone;
  String? postalCode;
  String? state;

  StoreModelStoresAddress({
    this.address1,
    this.address2,
    this.city,
    this.country,
    this.crossStreet,
    this.fax,
    this.mallName,
    this.phone,
    this.postalCode,
    this.state,
  });
  StoreModelStoresAddress.fromJson(Map<String, dynamic> json) {
    address1 = json['address1']?.toString();
    address2 = json['address2']?.toString();
    city = json['city']?.toString();
    country = json['country']?.toString();
    crossStreet = json['crossStreet']?.toString();
    fax = json['fax']?.toString();
    mallName = json['mallName']?.toString();
    phone = json['phone']?.toString();
    postalCode = json['postalCode']?.toString();
    state = json['state']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['address1'] = address1;
    data['address2'] = address2;
    data['city'] = city;
    data['country'] = country;
    data['crossStreet'] = crossStreet;
    data['fax'] = fax;
    data['mallName'] = mallName;
    data['phone'] = phone;
    data['postalCode'] = postalCode;
    data['state'] = state;
    return data;
  }
}

class StoreModel {
  StoreModelStoresAddress? address;
  StoreModelStoresCurbsideHours? curbsideHours;
  String? displayName;
  int? distance;
  bool? isBopisable;
  bool? isCurbsideEnabled;
  bool? isCurbsidePilotEnabled;
  bool? isNoShowFeeApplicable;
  bool? isOnlineReservationEnabled;
  bool? isRopisable;
  bool? isVirtual;
  int? latitude;
  int? longitude;
  String? reservationSystem;
  StoreModelStoresStoreHeroImages? storeHeroImages;
  StoreModelStoresStoreHours? storeHours;
  String? storeId;

  StoreModel({
    this.address,
    this.curbsideHours,
    this.displayName,
    this.distance,
    this.isBopisable,
    this.isCurbsideEnabled,
    this.isCurbsidePilotEnabled,
    this.isNoShowFeeApplicable,
    this.isOnlineReservationEnabled,
    this.isRopisable,
    this.isVirtual,
    this.latitude,
    this.longitude,
    this.reservationSystem,
    this.storeHeroImages,
    this.storeHours,
    this.storeId,
  });
  StoreModel.fromJson(Map<String, dynamic> json) {
    address = (json['address'] != null)
        ? StoreModelStoresAddress.fromJson(json['address'])
        : null;
    curbsideHours = (json['curbsideHours'] != null)
        ? StoreModelStoresCurbsideHours.fromJson(json['curbsideHours'])
        : null;
    displayName = json['displayName']?.toString();
    distance = json['distance']?.toInt();
    isBopisable = json['isBopisable'];
    isCurbsideEnabled = json['isCurbsideEnabled'];
    isCurbsidePilotEnabled = json['isCurbsidePilotEnabled'];
    isNoShowFeeApplicable = json['isNoShowFeeApplicable'];
    isOnlineReservationEnabled = json['isOnlineReservationEnabled'];
    isRopisable = json['isRopisable'];
    isVirtual = json['isVirtual'];
    latitude = json['latitude']?.toInt();
    longitude = json['longitude']?.toInt();
    reservationSystem = json['reservationSystem']?.toString();
    storeHeroImages = (json['storeHeroImages'] != null)
        ? StoreModelStoresStoreHeroImages.fromJson(json['storeHeroImages'])
        : null;
    storeHours = (json['storeHours'] != null)
        ? StoreModelStoresStoreHours.fromJson(json['storeHours'])
        : null;
    storeId = json['storeId']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (curbsideHours != null) {
      data['curbsideHours'] = curbsideHours!.toJson();
    }
    data['displayName'] = displayName;
    data['distance'] = distance;
    data['isBopisable'] = isBopisable;
    data['isCurbsideEnabled'] = isCurbsideEnabled;
    data['isCurbsidePilotEnabled'] = isCurbsidePilotEnabled;
    data['isNoShowFeeApplicable'] = isNoShowFeeApplicable;
    data['isOnlineReservationEnabled'] = isOnlineReservationEnabled;
    data['isRopisable'] = isRopisable;
    data['isVirtual'] = isVirtual;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['reservationSystem'] = reservationSystem;
    if (storeHeroImages != null) {
      data['storeHeroImages'] = storeHeroImages!.toJson();
    }
    if (storeHours != null) {
      data['storeHours'] = storeHours!.toJson();
    }
    data['storeId'] = storeId;
    return data;
  }
}
