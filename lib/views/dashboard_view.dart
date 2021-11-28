import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/controller/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Obx(() {
        return IndexedStack(
            index: controller.tabIndex.value, children: controller.pageList);
      })),
      bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav() {
    return BottomNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.search), label: "SEARCH"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.person), label: "PROFIL"),
      ],
      // showUnselectedLabels: false,
      // showSelectedLabels: false,
      currentIndex: controller.tabIndex.value,
      selectedItemColor: Colors.blue[600],
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      onTap: controller.setPage,
    );
  }
}
