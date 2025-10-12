import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final double h, w;
  final TextStyle? textStyle;
  final VoidCallback? ontap;
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.h,
    required this.w,
    this.textStyle,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: h.w,
        width: w.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: color,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 46,
              spreadRadius: 0,
              color: Colors.black87.withOpacity(0.09),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style:
                textStyle ??
                TextStyle(
                  fontFamily: 'TajawalB',

                  color: const Color(0xff404044),
                  fontWeight: FontWeight.w900,
                ),
          ),
        ),
      ),
    );
  }
}
