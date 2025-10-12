import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get_navigation/get_navigation.dart';

import 'package:get/utils.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';

class AuctionListingView extends StatelessWidget {
  const AuctionListingView({super.key});

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
                          Get.toNamed(RoutesName.mainScreen);
                        },
                        icon: Icon(Icons.arrow_back_rounded, size: 30.r),
                      ),
                      Text(
                        ' منار الأندلس',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffceb386),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/h9.png',
                    width: 350.w,
                    height: 320.h,
                    fit: BoxFit.cover,
                  ), // AuctionDetailTile(image: 'assets/images/h6a.png'),
                  //auction time
                  SizedBox(height: 20.h),
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
                  SizedBox(height: 20.h),
                  //السعر
                  GestureDetector(
                    onTap: () => Get.toNamed(RoutesName.checkoutView),
                    child: Container(
                      padding: EdgeInsets.all(10.r),
                      height: 83.h,
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
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              'ريال 5,500',
                              style: TextStyle(
                                fontFamily: 'TajawalB',
                                color: Color(0xff404044),
                                fontWeight: FontWeight.w900,
                                fontSize: 35.sp,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 3.h,
                            right: 70.w,
                            child: Text(
                              'وصف اضافي',
                              style: TextStyle(
                                fontFamily: 'TajawalB',
                                fontWeight: FontWeight.w700,
                                fontSize: 11.5.sp,
                                color: Color(0xffCEB386),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
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

                  SizedBox(height: 60.h),
                ],
              ),
              Positioned(
                top: 370.h,
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
                top: 535.h,
                right: 35.w,
                child: Text(
                  'السعر',
                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.5.sp,
                    color: Color(0xffCEB386),
                  ),
                ),
              ),
              Positioned(
                top: 640.h,
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
                top: 880.h,
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
                top: 1200.h,
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
              Positioned(
                top: 1528.h,
                right: 35.w,
                child: Text(
                  'البائع',
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
