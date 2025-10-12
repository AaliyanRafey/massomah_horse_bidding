import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/utils/widgets/popup_for_auction2.dart';

class PopupForAuction extends StatelessWidget {
  const PopupForAuction({super.key});

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
            width: 326.w,
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
                Container(
                  height: 70.h,
                  width: 300.w,
                  padding: EdgeInsets.all(20.r),
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
                      'يجب عليك اضافة تأمين بمبلغ X ريال لتتمكن من المزايدة.',
                      style: TextStyle(
                        fontFamily: 'TajawalReg',
                        fontWeight: FontWeight.w900,
                        fontSize: 13.sp,
                        color: Color(0xff404044),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                    Get.dialog(PopupForAuction2(), barrierDismissible: false);
                  },
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
                          'اضافة تأمين',
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
