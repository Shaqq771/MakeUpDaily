List<ProdukModel> produkFromJson(dynamic res) {
  final data = res["products"];
  return  List<ProdukModel>.from(
      data.map((x) => ProdukModel.fromJson(x)));
}


class CurrentSkuSkuImages {
  String? image135;
  String? image162;
  String? image250;
  String? image42;
  String? image450;
  String? image62;
  String? image97;

  CurrentSkuSkuImages({
    this.image135,
    this.image162,
    this.image250,
    this.image42,
    this.image450,
    this.image62,
    this.image97,
  });
  CurrentSkuSkuImages.fromJson(Map<String, dynamic> json) {
    image135 = json['image135']?.toString();
    image162 = json['image162']?.toString();
    image250 = json['image250']?.toString();
    image42 = json['image42']?.toString();
    image450 = json['image450']?.toString();
    image62 = json['image62']?.toString();
    image97 = json['image97']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image135'] = image135;
    data['image162'] = image162;
    data['image250'] = image250;
    data['image42'] = image42;
    data['image450'] = image450;
    data['image62'] = image62;
    data['image97'] = image97;
    return data;
  }
}

class ProdukModelProductsCurrentSku {
  String? biExclusiveLevel;
  String? imageAltText;
  bool? isAppExclusive;
  bool? isBI;
  bool? isBest;
  bool? isFirstAccess;
  bool? isLimitedEdition;
  bool? isLimitedTimeOffer;
  bool? isNatural;
  bool? isNew;
  bool? isOnlineOnly;
  bool? isOrganic;
  bool? isSephoraExclusive;
  String? listPrice;
  String? salePrice;
  String? skuId;
  CurrentSkuSkuImages? skuImages;
  String? skuType;

  ProdukModelProductsCurrentSku({
    this.biExclusiveLevel,
    this.imageAltText,
    this.isAppExclusive,
    this.isBI,
    this.isBest,
    this.isFirstAccess,
    this.isLimitedEdition,
    this.isLimitedTimeOffer,
    this.isNatural,
    this.isNew,
    this.isOnlineOnly,
    this.isOrganic,
    this.isSephoraExclusive,
    this.listPrice,
    this.salePrice,
    this.skuId,
    this.skuImages,
    this.skuType,
  });
  ProdukModelProductsCurrentSku.fromJson(Map<String, dynamic> json) {
    biExclusiveLevel = json['biExclusiveLevel']?.toString();
    imageAltText = json['imageAltText']?.toString();
    isAppExclusive = json['isAppExclusive'];
    isBI = json['isBI'];
    isBest = json['isBest'];
    isFirstAccess = json['isFirstAccess'];
    isLimitedEdition = json['isLimitedEdition'];
    isLimitedTimeOffer = json['isLimitedTimeOffer'];
    isNatural = json['isNatural'];
    isNew = json['isNew'];
    isOnlineOnly = json['isOnlineOnly'];
    isOrganic = json['isOrganic'];
    isSephoraExclusive = json['isSephoraExclusive'];
    listPrice = json['listPrice']?.toString();
    salePrice = json['salePrice']?.toString();
    skuId = json['skuId']?.toString();
    skuImages = (json['skuImages'] != null)
        ? CurrentSkuSkuImages.fromJson(json['skuImages'])
        : null;
    skuType = json['skuType']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['biExclusiveLevel'] = biExclusiveLevel;
    data['imageAltText'] = imageAltText;
    data['isAppExclusive'] = isAppExclusive;
    data['isBI'] = isBI;
    data['isBest'] = isBest;
    data['isFirstAccess'] = isFirstAccess;
    data['isLimitedEdition'] = isLimitedEdition;
    data['isLimitedTimeOffer'] = isLimitedTimeOffer;
    data['isNatural'] = isNatural;
    data['isNew'] = isNew;
    data['isOnlineOnly'] = isOnlineOnly;
    data['isOrganic'] = isOrganic;
    data['isSephoraExclusive'] = isSephoraExclusive;
    data['listPrice'] = listPrice;
    data['salePrice'] = salePrice;
    data['skuId'] = skuId;
    if (skuImages != null) {
      data['skuImages'] = skuImages!.toJson();
    }
    data['skuType'] = skuType;
    return data;
  }
}

class ProdukModel {
  String? brandName;
  ProdukModelProductsCurrentSku? currentSku;
  String? displayName;
  String? heroImage;
  String? image135;
  String? image250;
  String? image450;
  String? productId;
  String? rating;
  String? reviews;
  String? targetUrl;

  ProdukModel({
    this.brandName,
    this.currentSku,
    this.displayName,
    this.heroImage,
    this.image135,
    this.image250,
    this.image450,
    this.productId,
    this.rating,
    this.reviews,
    this.targetUrl,
  });
  ProdukModel.fromJson(Map<String, dynamic> json) {
    brandName = json['brandName']?.toString();
    currentSku = (json['currentSku'] != null)
        ? ProdukModelProductsCurrentSku.fromJson(json['currentSku'])
        : null;
    displayName = json['displayName']?.toString();
    heroImage = json['heroImage']?.toString();
    image135 = json['image135']?.toString();
    image250 = json['image250']?.toString();
    image450 = json['image450']?.toString();
    productId = json['productId']?.toString();
    rating = json['rating']?.toString();
    reviews = json['reviews']?.toString();
    targetUrl = json['targetUrl']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['brandName'] = brandName;
    if (currentSku != null) {
      data['currentSku'] = currentSku!.toJson();
    }
    data['displayName'] = displayName;
    data['heroImage'] = heroImage;
    data['image135'] = image135;
    data['image250'] = image250;
    data['image450'] = image450;
    data['productId'] = productId;
    data['rating'] = rating;
    data['reviews'] = reviews;
    data['targetUrl'] = targetUrl;
    return data;
  }
}
