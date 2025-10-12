import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Stack(
        children: [
          Positioned(
            top: 56.h,
            right: 30.w,
            child: Container(
              height: 35.h,
              width: 27.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Color(0xffCEB386), width: 1.5.w),
              ),
              child: Center(
                child: Text(
                  'ع',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.sp,

                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 220.h,
            left: 16.w,
            child: Container(
              height: 20.h,
              width: 135.w,
              decoration: BoxDecoration(color: Color(0xffCEB386)),
            ),
          ),
          Positioned(
            top: 170.h,
            left: 14.w,
            child: Container(
              height: 20.h,
              width: 121.w,
              decoration: BoxDecoration(color: Color(0xffCEB386)),
            ),
          ),
          Positioned(
            top: 150.h,
            right: 0.w,
            left: 0.w,
            child: Column(
              children: [
                Text(
                  'كل ما يخص الخيول\nشراء، بيع و مزايدات',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'TajawalB',
                    fontSize: 38.sp,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: -56.06.h,
            left: -100.06.w,
            child: Image.asset(
              'assets/images/c1.png',
              fit: BoxFit.fitHeight,
              height: 302.1163330078125.h,
              width: 302.1163330078125.w,
            ),
          ),

          Positioned(
            top: -26.06.h,
            left: -70.06.w,
            child: Image.asset(
              'assets/images/c2.png',
              fit: BoxFit.fitHeight,
              height: 302.1163330078125.h,
              width: 302.1163330078125.w,
            ),
          ),
          Positioned(
            top: -8.06.h,
            left: -55.06.w,
            child: Image.asset(
              'assets/images/c3.png',
              fit: BoxFit.fitHeight,
              height: 332.1163330078125.h,
              width: 332.1163330078125.w,
            ),
          ),
          Positioned(
            top: -12.06.h,
            left: -68.06.w,
            child: Image.asset(
              'assets/images/c4.png',
              fit: BoxFit.fitHeight,
              height: 392.1163330078125.h,
              width: 392.1163330078125.w,
            ),
          ),
          Positioned(
            bottom: 120.h,
            right: 15.w,
            left: 15.w,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(RoutesName.loginSignupView);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Color(0xffceb386), width: 2.5),
                ),
                child: Container(
                  height: 58.h,
                  width: 207.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: Color(0xff000000), width: 1),
                  ),
                  child: Center(
                    child: Text(
                      'متابعة',
                      style: TextStyle(
                        fontFamily: 'TajawalB',
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
