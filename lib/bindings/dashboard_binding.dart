import 'package:get/get.dart';
import 'package:makeupdaily/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
   Get.put<DashboardController>(DashboardController());
  }
  
}