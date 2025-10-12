import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/utils/widgets/otp_form.dart';

class PopupOtp extends StatelessWidget {
  final String phoneNumber;
  const PopupOtp({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent, // so blur works
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w), // margin from edges
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // background blur
          child: Container(
            height: 238.h,
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
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16.h),
                Text(
                  'الرجاء ادخال رمز التحقق المرسل للرقم\n$phoneNumber',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'TajawalReg',
                    fontWeight: FontWeight.w900,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 25.h),
                OtpForm(),
                SizedBox(height: 25.h),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesName.mainScreen);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xffceb386), width: 2),
                    ),
                    child: Container(
                      height: 48.h,
                      width: 197.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'تحقق',
                          style: TextStyle(
                            fontFamily: 'TajawalReg',
                            fontWeight: FontWeight.w700,
                            fontSize: 19.sp,
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
