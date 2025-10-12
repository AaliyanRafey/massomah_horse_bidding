import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/utils/widgets/add_text.dart';
import 'package:obaiah_developers/utils/widgets/custom_button.dart';

class HisaabiView extends StatelessWidget {
  const HisaabiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
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
                        'حسابي',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  AddText(width: 300.w, height: 41.h),
                  SizedBox(height: 30.h),
                  AddText(width: 300.w, height: 41.h),
                  SizedBox(height: 45.h),
                  Container(
                    height: 83.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,

                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          spreadRadius: 0,
                          color: Color(0xff000000).withOpacity(0.09),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30.w,
                      children: [
                        Container(
                          height: 60.h,
                          width: 115.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFfffff),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 46,
                                spreadRadius: 0,
                                color: Color(0xff000000).withOpacity(0.09),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'صورة الهوية من الأمام',
                              style: TextStyle(
                                fontFamily: 'TajawalReg',
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 60.h,
                          width: 115.w,

                          decoration: BoxDecoration(
                            color: Color(0xffFfffff),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 46,
                                spreadRadius: 0,
                                color: Color(0xff000000).withOpacity(0.09),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'صورة الهوية من الأمام',
                              style: TextStyle(
                                fontFamily: 'TajawalReg',
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      AddText(height: 36.h, width: 144.w),
                      AddText(height: 36.h, width: 144.w),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  AddText(width: 300.w, height: 41.h),

                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      AddText(height: 36.h, width: 194.w),
                      AddText(height: 36.h, width: 94.w),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      CustomButton(
                        ontap: () => Get.back(),
                        text: 'مسح',
                        color: Color(0xff818493),
                        h: 36.h,
                        w: 86.w,
                      ),
                      CustomButton(
                        ontap: () => Get.back(),
                        text: 'حفظ',
                        color: Color(0xffceb386),
                        h: 36.h,
                        w: 199.w.w,
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 60.h,
                right: 30.w,

                child: Text(
                  'الإسم كامل',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 15.sp,
                  ),
                ),
              ),
              Positioned(
                top: 135.h,
                right: 30.w,

                child: Text(
                  'رقم الهوية',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 15.sp,
                  ),
                ),
              ),
              Positioned(
                top: 225.h,
                right: 30.w,

                child: Text(
                  'صور الهوية',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 15.sp,
                  ),
                ),
              ),
              Positioned(
                top: 342.h,
                right: 30.w,

                child: Text(
                  'المنطقة',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 10.sp,
                  ),
                ),
              ),
              Positioned(
                top: 342.h,
                left: 80.w,

                child: Text(
                  'المدينة / المحافظة',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 10.sp,
                  ),
                ),
              ),
              Positioned(
                top: 412.h,
                right: 30.w,

                child: Text(
                  'رقم الجوال',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 15.sp,
                  ),
                ),
              ),
              Positioned(
                top: 492.h,
                right: 30.w,

                child: Text(
                  'رقم الايبان',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 10.sp,
                  ),
                ),
              ),
              Positioned(
                top: 492.h,
                left: 180.w,

                child: Text(
                  'البنك',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',

                    fontSize: 10.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
