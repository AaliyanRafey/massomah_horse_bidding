import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingOptions extends StatelessWidget {
  final double h, w;
  final String text, img;
  final VoidCallback ontap;

  const SettingOptions({
    super.key,
    this.h = 110,
    this.w = 160,
    required this.text,
    required this.img,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: h.h,
        width: w.w,
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 46,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.09),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img, height: 25.h, width: 40.w, fit: BoxFit.contain),
            SizedBox(height: 5.h),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'TajawalReg',
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
