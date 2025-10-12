import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/utils/widgets/popup_otp.dart';

class LoginSignupView extends StatefulWidget {
  const LoginSignupView({super.key});

  @override
  State<LoginSignupView> createState() => _LoginSignupViewState();
}

class _LoginSignupViewState extends State<LoginSignupView> {
  final TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

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
            bottom: 310,
            right: 15,
            left: 15,
            child: GestureDetector(
              onTap: () => Get.dialog(
                PopupOtp(phoneNumber: phoneController.text),
                barrierDismissible: false,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffceb386), width: 2),
                ),
                child: Container(
                  height: 58.h,
                  width: 207.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xff000000), width: 1),
                  ),
                  child: Center(
                    child: Text(
                      'متابعة',
                      style: TextStyle(
                        fontFamily: 'TajawalB',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'رقم الجوال',
                  style: TextStyle(
                    fontFamily: 'TajawalReg',
                    fontWeight: FontWeight.w600,
                    fontSize: 19.sp,
                  ),
                ),
                Container(
                  height: 42.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: Color(0xff000000).withOpacity(0.1),
                        blurRadius: 36,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,

                    autocorrect: false,
                    enableSuggestions: true,

                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none, // removes the underline
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero, // keeps text centered
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
