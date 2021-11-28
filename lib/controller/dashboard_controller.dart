import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/controller/home_controller.dart';
import 'package:makeupdaily/views/home_view.dart';
import 'package:makeupdaily/views/profil_view.dart';
import 'package:makeupdaily/views/store_view.dart';

class DashboardController extends GetxController {
  HomeController homeController = Get.put(HomeController());

  final Rx<int> tabIndex = 0.obs;
  final List<Widget> pageList = [
    const HomeView(), //0
    const StoreView(), //1
    Profil()//2
  ];

  void setPage(int index) {
    tabIndex(index);
  }
}
