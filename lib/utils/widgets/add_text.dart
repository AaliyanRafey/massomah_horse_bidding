import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddText extends StatelessWidget {
  final double height, width;
  const AddText({super.key, this.height = 30, this.width = 128});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 46,
            color: Color(0xff000000).withOpacity(0.09),
          ),
        ],
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.name,
        autocorrect: false,
        enableSuggestions: true,
        style: TextStyle(
          fontFamily: 'TajawalReg',
          fontSize: 12.sp,
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
      ),
    );
  }
}
