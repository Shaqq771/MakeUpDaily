import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/model/produk_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailProduk extends GetView {
  final ProdukModel produk;
  const DetailProduk({Key? key, required this.produk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Detail Produk",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Image.network(
            produk.currentSku!.skuImages!.image135 ?? "",
            height: 40.h,
            width: 100.w,
            fit: BoxFit.fill,
          ),
          Text(produk.currentSku!.imageAltText ?? "", 
          style: TextStyle(fontSize: 18.sp,)),
          Text(produk.currentSku!.listPrice ?? "", 
          style: TextStyle(fontSize: 16.sp,)),
          Text(produk.currentSku!.skuType ?? "", 
          style: TextStyle(fontSize: 16.sp,)),
        ],
      ),
    );
  }
}
