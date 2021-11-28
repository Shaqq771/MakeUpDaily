import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeupdaily/routes/app_pages.dart';
import 'package:makeupdaily/views/home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MaekupDaily',
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
            fontFamily: 'Poppins',
            primarySwatch: Colors.grey,
            primaryColor: Colors.yellow),
      );
    });
  }
}
