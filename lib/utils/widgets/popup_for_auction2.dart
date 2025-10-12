import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';

class PopupForAuction2 extends StatelessWidget {
  const PopupForAuction2({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 168.h,
            width: 346.w,
            decoration: BoxDecoration(
              color: const Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60.h,
                      width: 100.w,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 46,
                            offset: Offset(0, 10),
                            color: Color(0xff000000).withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          '100ريال',
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            fontWeight: FontWeight.w900,
                            fontSize: 20.sp,
                            color: Color(0xff404044),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 100.w,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 46,
                            offset: Offset(0, 10),
                            color: Color(0xff000000).withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Text(
                          '500 ريال',
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            fontWeight: FontWeight.w900,
                            fontSize: 20.sp,
                            color: Color(0xff404044),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 100.w,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 46,
                            offset: Offset(0, 10),
                            color: Color(0xff000000).withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Text(
                          '700 ريال',
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            fontWeight: FontWeight.w900,
                            fontSize: 20.sp,
                            color: Color(0xff404044),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.auctionDetail2View),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.5, // outer border
                        color: Color(0xffceb386),
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Container(
                      height: 50.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(width: 1.5, color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          'اضافة',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'TajawalB',
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
