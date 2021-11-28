import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/model/produk_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProdukCard extends GetView {
  final ProdukModel produk;
  final Function(ProdukModel) onClick;
  const ProdukCard({Key? key, required this.produk, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick(produk);
      },
      child: Container(
        margin: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 2.w, top: 2.w),
        height: 20.h,
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
                produk.currentSku!.skuImages!.image135 ?? "",
                height: 15.h,
                width: 40.w,
                fit: BoxFit.cover,
              ),
              Text(produk.currentSku!.imageAltText ?? ""),
              Text(produk.currentSku!.listPrice ?? ""),
              Text(produk.currentSku!.skuType ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
