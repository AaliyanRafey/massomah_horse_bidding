import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/views/Introduction/landing_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Get.offAll(() => LandingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Stack(
        children: [
          Positioned(
            top: 320.h,
            right: 10.w,
            left: 10.w,
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                Text(
                  'مسومة',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'ReadexPro',
                    fontSize: 27.sp,
                    letterSpacing: -0.41,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -56.06.h,
            left: -110.06.w,
            child: Image.asset(
              'assets/images/c1.png',
              fit: BoxFit.fitHeight,
              height: 302.1163330078125.h,
              width: 302.1163330078125.w,
            ),
          ),

          Positioned(
            top: -26.06.h,
            left: -80.06.w,
            child: Image.asset(
              'assets/images/c2.png',
              fit: BoxFit.fitHeight,
              height: 302.1163330078125.h,
              width: 302.1163330078125.w,
            ),
          ),
          Positioned(
            top: -8.06.h,
            left: -65.06.w,
            child: Image.asset(
              'assets/images/c3.png',
              fit: BoxFit.fitHeight,
              height: 332.1163330078125.h,
              width: 332.1163330078125.w,
            ),
          ),
          Positioned(
            top: -15.06.h,
            left: -78.06.w,
            child: Image.asset(
              'assets/images/c4.png',
              fit: BoxFit.fitHeight,
              height: 392.1163330078125.h,
              width: 392.1163330078125.w,
            ),
          ),

          Positioned(
            bottom: -50.h,
            right: -120.w,
            child: Image.asset(
              'assets/images/c1a.png',
              fit: BoxFit.fitHeight,
              height: 302.1163330078125.h,
              width: 302.1163330078125.w,
            ),
          ),
          Positioned(
            bottom: -20.h,
            right: -80.w,
            child: Image.asset(
              'assets/images/c2a.png',
              fit: BoxFit.fitHeight,
              height: 302.1163330078125.h,
              width: 302.1163330078125.w,
            ),
          ),
          Positioned(
            bottom: 1.h,
            right: -65.w,
            child: Image.asset(
              'assets/images/c3a.png',
              fit: BoxFit.fitHeight,
              height: 332.1163330078125.h,
              width: 332.1163330078125.w,
            ),
          ),
          Positioned(
            bottom: -10.h,
            right: -70.w,
            child: Image.asset(
              'assets/images/c4s.png',
              fit: BoxFit.fitHeight,
              height: 392.1163330078125.h,
              width: 392.1163330078125.w,
            ),
          ),
        ],
      ),
    );
  }
}
