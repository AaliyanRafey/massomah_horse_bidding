import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/utils/widgets/custom_button.dart';

class MabeeaaniView extends StatelessWidget {
  const MabeeaaniView({super.key});

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
                    'مبيعاتي',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 300.h,
                width: 357,
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
                    //
                    Positioned(
                      top: 12.h,
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
                    Positioned(
                      top: 12.h,
                      left: 25.w,
                      child: Text(
                        '#51450049',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontWeight: FontWeight.w900,
                          fontSize: 22.5.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      child: Row(
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
                          SizedBox(width: 15.w),
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
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      Text(
                                        '  منار الاندلس',
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
                                        'النوع',
                                        style: TextStyle(
                                          fontFamily: 'TajawalB',
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xff404044),
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      Text(
                                        'فرس',
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
                                          fontSize: 13.sp,
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
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      Text(
                                        'أبيض',
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
                                          fontSize: 13.sp,
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
                                          fontSize: 13.sp,
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
                    ),
                    Positioned(
                      bottom: 60.h,
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
                      bottom: 20.h,
                      left: 20.w,
                      child: Column(
                        children: [
                          Text(
                            'حالة المبايعة',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 18.sp,
                            ),
                          ),
                          CustomButton(
                            text: 'بانتظار الدفع',
                            color: Color(0xff818493),
                            h: 26.h,
                            w: 154.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 300.h,
                width: 357,
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
                    //
                    Positioned(
                      top: 12.h,
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
                    Positioned(
                      top: 12.h,
                      left: 25.w,
                      child: Text(
                        '#51450049',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontWeight: FontWeight.w900,
                          fontSize: 22.5.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      child: Row(
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
                              'assets/images/h3.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(width: 15.w),
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
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      Text(
                                        '  منار الاندلس',
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
                                        'النوع',
                                        style: TextStyle(
                                          fontFamily: 'TajawalB',
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xff404044),
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      Text(
                                        'فرس',
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
                                          fontSize: 13.sp,
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
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      Text(
                                        'أبيض',
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
                                          fontSize: 13.sp,
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
                                          fontSize: 13.sp,
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
                    ),
                    Positioned(
                      bottom: 60.h,
                      right: 15.w,
                      child: Text(
                        '5,500 ريال',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontWeight: FontWeight.w900,
                          fontSize: 22.5.sp,
                          color: Color(0xffCEB386),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.h,
                      left: 20.w,
                      child: Column(
                        children: [
                          Text(
                            'حالة المبايعة',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 18.sp,
                            ),
                          ),
                          CustomButton(
                            text: 'تم تحويل المبلغ لحسابكم البنكي',
                            textStyle: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: 'TajawalB',
                            ),
                            color: Color(0xff99CE86),
                            h: 26.h,
                            w: 154.w,
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
