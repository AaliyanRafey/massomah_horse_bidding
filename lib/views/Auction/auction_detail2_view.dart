import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/utils.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';

import 'package:obaiah_developers/view_models/time_controller.dart';

class AuctionDetail2View extends StatelessWidget {
  AuctionDetail2View({super.key});

  final TimeController timeController = Get.put(
    TimeController(initialDuration: Duration(minutes: 47, hours: 11, days: 02)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    spacing: 65.w,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back_rounded, size: 30.r),
                      ),
                      Text(
                        'مزايدة عزة الاجود',
                        style: TextStyle(
                          fontFamily: 'TajawalReg',
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 14.h,
                    ),
                    height: 365.h,
                    width: 347.w,

                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 36,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Container(
                      width: 327.w,
                      height: 205.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 4),
                            blurRadius: 46,
                            spreadRadius: 5,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18.r),
                        child: Image.asset(
                          'assets/images/h6a.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  // AuctionDetailTile(image: 'assets/images/h6a.png'),
                  SizedBox(height: 30.h),
                  //auction time
                  Container(
                    height: 270.h,
                    width: 337.w,
                    decoration: BoxDecoration(
                      color: Color(0xfFffffff),
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 8,
                          spreadRadius: 0,
                          color: Color(0xff000000).withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentGeometry.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 280.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 6,
                                      color: Color(0xff000000).withOpacity(0.5),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsetsGeometry.only(
                                    top: 10.h,
                                    left: 50.w,
                                  ),
                                  child: Text(
                                    '2025 / 10 / 2',
                                    style: TextStyle(
                                      fontFamily: 'TajawalB',
                                      color: Color(0xff404044),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 280.w,
                                height: 58.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 6,
                                      color: Color(0xff000000).withOpacity(0.5),
                                    ),
                                  ],
                                ),
                                child: Obx(
                                  () => Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2.0,
                                    ),
                                    child: Stack(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  timeController.hours
                                                      .toString()
                                                      .padLeft(2, '0'),
                                                  style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontFamily: 'TajawalB',
                                                    color: const Color(
                                                      0xFF404044,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  " : ",
                                                  style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontFamily: 'TajawalB',
                                                    color: const Color(
                                                      0xFF404044,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  timeController.minutes
                                                      .toString()
                                                      .padLeft(2, '0'),
                                                  style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontFamily: 'TajawalB',
                                                    color: const Color(
                                                      0xFF404044,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  " : ",
                                                  style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontFamily: 'TajawalB',
                                                    color: const Color(
                                                      0xFF404044,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  timeController.seconds
                                                      .toString()
                                                      .padLeft(2, '0'),
                                                  style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontFamily: 'TajawalB',
                                                    color: const Color(
                                                      0xFF404044,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 5.h,
                                          left: 10.w,

                                          right: 10.w,

                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "دقيقة",
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontFamily: 'TajawalReg',
                                                  fontWeight: FontWeight.w900,
                                                  color: const Color(
                                                    0xFFCEB386,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 36.w),
                                              Text(
                                                "ساعة",
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontFamily: 'TajawalReg',
                                                  fontWeight: FontWeight.w900,
                                                  color: const Color(
                                                    0xFFCEB386,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 36.w),
                                              Text(
                                                "يوم",
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontFamily: 'TajawalReg',
                                                  fontWeight: FontWeight.w900,
                                                  color: const Color(
                                                    0xFFCEB386,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    Get.toNamed(RoutesName.auctionListingView),
                                child: Container(
                                  width: 280.w,
                                  height: 51.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: Color(0xffceb386),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 55.w,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/images/alarm.png',
                                            fit: BoxFit.fitWidth,
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          Text(
                                            'ذكرني بالمزاد',
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              fontFamily: 'TajawalB',
                                              color: const Color(0xFF404044),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 13.h,
                          right: 32.w,
                          child: Text(
                            'تاريخ المزاد',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 14.sp,
                              color: Color(0xffCEB386),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 94.h,
                          right: 32.w,
                          child: Text(
                            'يبدأ المزاد بعد:',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 14.sp,
                              color: Color(0xffCEB386),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  //الملخص
                  Container(
                    padding: EdgeInsets.all(10.r),
                    height: 145.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),

                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          spreadRadius: 0,
                          color: Color(0xff000000).withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'العمر',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  '2س5 ش',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'الاسم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  '  منار الاندلس',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
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
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'فرس',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'السلامة',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'سليم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'الطول',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  ' 185 سم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
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
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'أبيض',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  //person picture
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 210.h,
                        width: 231.w,
                        padding: EdgeInsets.all(20.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 46,
                              spreadRadius: 0,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه. بروشور او فلاير على سبيل المثال. او نماذج مواقع انترنت. وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية',
                            style: TextStyle(
                              color: Color(0xff404044),
                              fontSize: 14.sp,
                              fontFamily: 'TajawalReg',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 73.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20.r),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  color: Color(0xff000000).withOpacity(0.1),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Image.asset(
                                'assets/images/yasheikh.png',
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                          Text(
                            'د. عبدالعزيز الحمدان',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: 'TajawalReg',
                              fontSize: 14.sp,
                              color: Color(0xffCEB386),
                            ),
                          ),
                          Text(
                            'خبرة 25 سنة',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: 'TajawalReg',
                              fontSize: 13.sp,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),

                  //تفاصيل الحصان',
                  Container(
                    padding: EdgeInsets.all(10.r),
                    height: 290.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),

                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          spreadRadius: 0,
                          color: Color(0xff000000).withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //row no 1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'العمر',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  '2س5 ش',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'الاسم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  '  منار الاندلس',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
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
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'فرس',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        // row no 2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'اللون',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'ابيض',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'اسم الأم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 13.sp,
                                  ),
                                ),
                                Text(
                                  ' ساره الفلا',
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
                                  'اسم الأب',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  'حيان الاندلس',
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
                        SizedBox(height: 20.h),
                        // row no 3
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'السلامة',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 13.5.sp,
                                  ),
                                ),
                                Text(
                                  'سليم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'الوزن',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  ' 155 كج,',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'الطول',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  '182 سم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        // row no 4
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'الاصالة',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'عربي',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'اكمل تطعيماته؟',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 13.sp,
                                  ),
                                ),
                                Text(
                                  'لا',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'الموقع',
                                  style: TextStyle(
                                    fontFamily: 'TajawalB',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff404044),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  'القصيم',
                                  style: TextStyle(
                                    fontFamily: 'TajawalReg',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff404044),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),

                  //وصف اضافي
                  Container(
                    width: 327.w,
                    height: 297.h,
                    padding: EdgeInsets.all(14.r),
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
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text(
                        "لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت ...وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي",
                        style: TextStyle(
                          fontFamily: 'TajawalReg',
                          fontWeight: FontWeight.w900,
                          fontSize: 15.sp,
                          color: Color(0xff404044),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  //البائع
                  Container(
                    height: 144.h,
                    width: 327.w,
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
                          top: 30.h,
                          right: 10.w,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'موثّق',
                                    style: TextStyle(
                                      fontFamily: 'TajawalB',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 21.sp,
                                      color: Color(0xffCEB386),
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Image.asset(
                                    'assets/images/check.png',
                                    fit: BoxFit.fitWidth,
                                    height: 26.h,
                                    width: 26.w,
                                  ),
                                ],
                              ),
                              Text(
                                'مربط النايفة',
                                style: TextStyle(
                                  fontFamily: 'TajawalB',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 19.sp,
                                ),
                              ),
                              Text(
                                'أحمد بن عبدالعزيز     \nالفهدان ',
                                style: TextStyle(
                                  fontFamily: 'TajawalReg',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 11.sp,
                                  color: Color(0xff404044),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 30.h,
                          left: 30.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'التقييمات',
                                    style: TextStyle(
                                      fontFamily: 'TajawalReg',

                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff404044),
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text(
                                    '6 احصنة',
                                    style: TextStyle(
                                      fontFamily: 'TajawalB',
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff404044),
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 15.w),
                              Column(
                                children: [
                                  Text(
                                    'المبايعات',
                                    style: TextStyle(
                                      fontFamily: 'TajawalReg',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff404044),
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text(
                                    '5 تقييمات',
                                    style: TextStyle(
                                      fontFamily: 'TajawalB',
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff404044),
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 80.h,
                          left: 12.w,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 36.r,
                                color: Color(0xffCEB386),
                              ),
                              Icon(
                                Icons.star,
                                size: 36.r,
                                color: Color(0xffCEB386),
                              ),
                              Icon(
                                Icons.star,
                                size: 36.r,
                                color: Color(0xffCEB386),
                              ),
                              Icon(
                                Icons.star,
                                size: 36.r,
                                color: Color(0xffCEB386),
                              ),
                              Icon(
                                Icons.star,
                                size: 36.r,
                                color: Color(0xffCFDCE5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 200.h),
                ],
              ),
              Positioned(
                top: 728.h,
                right: 35.w,
                child: Text(
                  'الملخص',
                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.5.sp,
                    color: Color(0xffCEB386),
                  ),
                ),
              ),
              Positioned(
                top: 902.h,
                right: 145.w,
                child: Text(
                  'رأي الخبير',
                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.5.sp,
                    color: Color(0xffCEB386),
                  ),
                ),
              ),
              Positioned(
                top: 1140.h,
                right: 35.w,
                child: Text(
                  'تفاصيل الحصان',
                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.5.sp,
                    color: Color(0xffCEB386),
                  ),
                ),
              ),
              Positioned(
                top: 1460.h,
                right: 35.w,
                child: Text(
                  'وصف اضافي',
                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.5.sp,
                    color: Color(0xffCEB386),
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
