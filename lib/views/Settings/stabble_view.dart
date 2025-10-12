import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/views/Add/add_new_horse.dart';

class StabbleView extends StatelessWidget {
  const StabbleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddView());
        },
        backgroundColor: const Color(0xffceb386), // Plum color
        mini: true, // ✅ makes it small
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // ✅ bottom-right

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    'اسطبلي',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              //تفاصيل الحصان
              Container(
                height: 270.h,
                width: 347,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 46,
                      spreadRadius: 0,
                      color: Color(0xff000000).withOpacity(0.09),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.h,
                      right: 25.w,
                      child: Text(
                        'غدير الأمال',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontWeight: FontWeight.w900,
                          fontSize: 20.5.sp,
                          color: Color(0xffCEB386),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 178.h,
                          width: 175.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 2),
                                blurRadius: 0,
                                color: Color(0xffCeb386).withOpacity(0.5),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/h10.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //row 1
                            Row(
                              spacing: 20.w,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'الاسم',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '  منار الاندلس',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'النوع',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'فرس',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              spacing: 41.w,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'الطول',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '185 سم',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'اللون',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'أبيض',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            //row 2
                            Row(
                              spacing: 28.w,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'العسف',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'معسوف',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'العمر',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '2س5 ش',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            //row 3,
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 10.h,
                      right: 15.w,
                      child: Text(
                        '1,450 ريال',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontWeight: FontWeight.w900,
                          fontSize: 22.5.sp,
                          color: Color(0xffCEB386),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      left: 20.w,
                      child: Row(
                        spacing: 15.w,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Container(
                              height: 23.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.sp),
                                border: Border.all(
                                  color: Color(0xffD6193B),

                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'حذف',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Container(
                              height: 23.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: Color(0xffceb386),
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'تعديل',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              //تفاصيل الحصان
              Container(
                height: 270.h,
                width: 347,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 46,
                      spreadRadius: 0,
                      color: Color(0xff000000).withOpacity(0.09),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.h,
                      right: 15.w,
                      child: Text(
                        'تفاصيل الحصان',
                        style: TextStyle(
                          fontFamily: 'TajawalReg',
                          fontWeight: FontWeight.w700,
                          fontSize: 13.5.sp,
                          color: Color(0xffCEB386),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 168.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 2),
                                blurRadius: 0,
                                color: Color(0xffCeb386).withOpacity(0.5),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/h3.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //row 1
                            Row(
                              spacing: 20.w,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'الاسم',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '  منار الاندلس',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'النوع',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'فرس',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              spacing: 41.w,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'الطول',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '185 سم',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'اللون',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'أبيض',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            //row 2
                            Row(
                              spacing: 28.w,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'العسف',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'معسوف',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'العمر',
                                      style: TextStyle(
                                        fontFamily: 'TajawalB',
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff404044),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '2س5 ش',
                                      style: TextStyle(
                                        fontFamily: 'TajawalReg',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff404044),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            //row 3,
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 10.h,
                      right: 15.w,
                      child: Text(
                        '5،500 ريال',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontWeight: FontWeight.w900,
                          fontSize: 22.5.sp,
                          color: Color(0xffCEB386),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      left: 20.w,
                      child: Row(
                        spacing: 15.w,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Container(
                              height: 23.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.sp),
                                border: Border.all(
                                  color: Color(0xffD6193B),

                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'حذف',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Container(
                              height: 23.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: Color(0xffceb386),
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'تعديل',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
