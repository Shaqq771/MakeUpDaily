import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Profil extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Muhammad Ishaq Matanggwan',
                style: TextStyle(
                  fontSize: 20.sp,
                )),
            SizedBox(
              height: 2.h,
            ),
            Text('2112019130053',
                style: TextStyle(
                  fontSize: 18.sp,
                )),
            SizedBox(
              height: 2.h,
            ),
            Text('TA Mobile Device Programming',
                style: TextStyle(
                  fontSize: 16.sp,
                )),
          ],
        ),
      ),
    );
  }
}
