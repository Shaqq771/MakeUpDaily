import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/controller/home_controller.dart';
import 'package:makeupdaily/controller/produk_controller.dart';
import 'package:makeupdaily/model/produk_model.dart';
import 'package:makeupdaily/model/store_model.dart';
import 'package:makeupdaily/views/widget/detail_produk.dart';
import 'package:makeupdaily/views/widget/produk_card.dart';
import 'package:makeupdaily/views/widget/store_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'detail_store.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 6.h,
            ),
            Text("Produk",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 34.h,
              child: ListView.builder(
                  // padding: EdgeInsets.only(left: 2.w),
                  itemCount: controller.listProduk.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProdukCard(
                      produk: controller.listProduk[index],
                      onClick: (ProdukModel produk){
                        Get.to(DetailProduk(produk: produk));
                      },
                    );
                  }),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text("Store",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.listStore.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return StoreCard(
                      store: controller.listStore[index],
                      onClick: (StoreModel store){
                        Get.to(DetailStore(store: store));
                      },
                    );
                  }),
            ),
          ],
        ),
      );
    }));
  }
}
