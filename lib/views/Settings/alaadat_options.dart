import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:obaiah_developers/utils/widgets/custom_toggle.dart';

class AlaadatOptions extends StatelessWidget {
  final String img, text;
  final bool val;
  const AlaadatOptions({
    super.key,
    required this.img,
    required this.text,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      width: 160.w,
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
          Image.asset(img, height: 22.h, width: 35.w, fit: BoxFit.contain),
          SizedBox(height: 12.h),

          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'TajawalB',
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: 3.h),
          CustomToggle(initialValue: val),
        ],
      ),
    );
  }
}
