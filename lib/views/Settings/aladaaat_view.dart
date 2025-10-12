import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/views/Settings/alaadat_options.dart';

class AladaaatView extends StatelessWidget {
  const AladaaatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // top name
              Row(
                spacing: 90.w,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 30.r,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'الإعدادات',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AlaadatOptions(
                    val: false,
                    img: 'assets/images/a2.png',
                    text: 'الوضع الداكن',
                  ),
                  AlaadatOptions(
                    val: true,
                    img: 'assets/images/a1.png',
                    text: 'التنبيهات',
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AlaadatOptions(
                    val: true,

                    img: 'assets/images/a3.png',
                    text: 'تحديد الموقع',
                  ),
                  AlaadatOptions(
                    val: false,
                    img: 'assets/images/a4.png',
                    text: 'رسائل دعائية',
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 120.h,
                width: 160.w,
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 46,
                      spreadRadius: 0,
                      color: Colors.black.withOpacity(0.09),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/a5.png',
                      height: 55.h,
                      width: 55.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
