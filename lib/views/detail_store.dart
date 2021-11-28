import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/model/store_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailStore extends GetView {
  final StoreModel store;
  const DetailStore({Key? key,required this.store }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Detail Store",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
            Image.network(
              store.storeHeroImages!.imagePath ?? "",
              height: 40.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
            Text(store.displayName ?? "", 
          style: TextStyle(fontSize: 18.sp,)),
            Text(store.address!.address1 ?? "", 
          style: TextStyle(fontSize: 16.sp,)),
            Text(store.distance.toString(), 
          style: TextStyle(fontSize: 16.sp,)),
        ],
      ),
    );
  }
}
