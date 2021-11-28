import 'package:flutter/foundation.dart';
import 'package:makeupdaily/model/produk_model.dart';
import 'package:makeupdaily/model/store_model.dart';
import 'package:makeupdaily/repository/api_response.dart';

class RestDataSource {
  Response resp = Response();

  static const baseUrl = 'sephora.p.rapidapi.com';

  static const produkListUrl = "/products/list";
  static const storeListUrl = "/stores/list";

  Future<List<ProdukModel>> getProduk() async {
    Uri uri = Uri.https(baseUrl, produkListUrl,
        {"categoryId": "cat160006", "pageSize": "5", "currentPage": "1"});
    Map<String, String> header = {
      "x-rapidapi-hos": "sephora.p.rapidapi.com",
      "x-rapidapi-key": "e5faf2c0f4mshb7575ceecc8671ep1cb849jsn9fb19ced3d60",
      "useQueryString": "true"
    };

    return await resp.get(uri, headers: header).then((dynamic res) {
      return compute(produkFromJson, res);
    });
  }

  Future<List<StoreModel>> getStore() async {
    Uri uri = Uri.https(baseUrl, storeListUrl,
        {"latitude": "33.9733", "longitude": "-118.2487", "radius": "10"});
    Map<String, String> header = {
      "x-rapidapi-hos": "sephora.p.rapidapi.com",
      "x-rapidapi-key": "e5faf2c0f4mshb7575ceecc8671ep1cb849jsn9fb19ced3d60",
      "useQueryString": "true"
    };

    return await resp.get(uri, headers: header).then((dynamic res) {
      return compute(storeFromJson, res);
    });
  }
}
