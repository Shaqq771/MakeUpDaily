import 'package:get/get.dart';
import 'package:makeupdaily/model/produk_model.dart';
import 'package:makeupdaily/repository/req_api.dart';

class ProdukController extends GetxController {
  var listProduk = <ProdukModel>[].obs;
  RestDataSource api = RestDataSource();

  @override
  void onInit() {
    getProduk();
    super.onInit();
  }

  void getProduk() {
    api.getProduk().then((data) {
      listProduk.value = [...listProduk, ...data];
    }).catchError((onError) {});
  }
}
