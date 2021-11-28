import 'package:get/get.dart';
import 'package:makeupdaily/model/store_model.dart';
import 'package:makeupdaily/repository/req_api.dart';

class StoreController extends GetxController {
  var listStore = <StoreModel>[].obs;
  var filterListStore = <StoreModel>[].obs;
  RestDataSource api = RestDataSource();

  @override
  void onInit() {
    getStore();
    super.onInit();
  }

  void getStore() {
    api.getStore().then((data) {
      listStore.value = [...listStore, ...data];
    }).catchError((onError) {});
  }

  void filterdata(String key) {
    filterListStore.clear();
    filterListStore.value = [
      ...filterListStore,
      ...listStore.where((data) => data.displayName!.contains(key)).toList()
    ];
  }
}
