import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/utils/widgets/custom_button.dart';

class PopupSettings extends StatelessWidget {
  const PopupSettings({super.key});

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
            height: 286.h,
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
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            text: '5000 ريال',
                            color: Color(0xff818493),
                            h: 50.h,
                            w: 130.w,
                          ),
                          CustomButton(
                            text: '2،000 ريال',
                            color: Color(0xffFFFFFF),
                            h: 50.h,
                            w: 130.w,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/visa.png',
                            height: 64.h,
                            width: 150.w,
                            fit: BoxFit.fitWidth,
                          ),
                          Image.asset(
                            'assets/images/mada.png',
                            height: 64.h,
                            width: 150.w,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(RoutesName.mainScreen),
                        child: Container(
                          height: 32.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.black,
                          ),
                          child: Image.asset(
                            'assets/images/applepay.png',

                            height: 25.h,
                            width: 25.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 125.w,
                  child: Text(
                    'المحفظة',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  left: 135.w,
                  child: CustomButton(
                    ontap: () => Get.back(),
                    text: 'الغاء',
                    color: Color(0xff818493),
                    h: 28.h,
                    w: 55.w,
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
