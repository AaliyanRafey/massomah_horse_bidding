import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TapButtton extends StatelessWidget {
  final String text, icon;
  final Color color;
  final VoidCallback ontap;

  const TapButtton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45.h,
        width: 120.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5.h,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'TajawalB',
                  fontSize: 14.sp,
                ),
              ),
              SvgPicture.asset(icon),
            ],
          ),
        ),
      ),
    );
  }
}
