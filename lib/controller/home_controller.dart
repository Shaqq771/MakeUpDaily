import 'package:get/get.dart';
import 'package:makeupdaily/controller/produk_controller.dart';
import 'package:makeupdaily/controller/store_controller.dart';
import 'package:makeupdaily/model/produk_model.dart';
import 'package:makeupdaily/model/store_model.dart';

class HomeController extends GetxController {
  var listProduk = <ProdukModel>[].obs;
  var listStore = <StoreModel>[].obs;

  final ProdukController _produkController = Get.put(ProdukController());
  final StoreController _storeController = Get.put(StoreController());

  @override
  void onInit() {
    listProduk = _produkController.listProduk;
    listStore = _storeController.listStore;
    super.onInit();
  }
}
