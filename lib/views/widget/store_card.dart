import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/model/store_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StoreCard extends GetView {
  final StoreModel store;
  final Function(StoreModel) onClick;
  const StoreCard({Key? key, required this.store, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick(store);
      },
      child: Container(
        margin: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 2.w, top: 2.w),
        height: 28.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(1.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                store.storeHeroImages!.imagePath ?? "",
                height: 15.h,
                width: 40.w,
                fit: BoxFit.cover,
              ),
              Text(store.displayName ?? ""),
              Text(store.address!.address1 ?? ""),
              Text(store.distance.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
