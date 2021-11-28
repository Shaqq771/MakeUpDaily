import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/controller/store_controller.dart';
import 'package:makeupdaily/model/store_model.dart';
import 'package:makeupdaily/views/detail_store.dart';
import 'package:makeupdaily/views/widget/store_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[100]!,
                    blurRadius: 5,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: TextFormField(
                textCapitalization: TextCapitalization.characters,
                validator: (value) {},
                onFieldSubmitted: (String value){
                  controller.filterdata(value);
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 2.5.h,
                    color: Colors.grey,
                  ),
                  hintText: "Cari store",
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.sp,
                  ),
                ),
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: controller.filterListStore.isEmpty
                  ? ListView.builder(
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
                      })
                  : ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.filterListStore.length,
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
