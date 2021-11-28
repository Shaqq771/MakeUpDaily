import 'package:get/get.dart';
import 'package:makeupdaily/bindings/dashboard_binding.dart';
import 'package:makeupdaily/bindings/home_binding.dart';
import 'package:makeupdaily/views/dashboard_view.dart';
import 'package:makeupdaily/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [

    GetPage(
      name: _Paths.HOME,
      page: () =>  DashboardView(),
      binding: DashboardBinding(),
    )
  ];
}