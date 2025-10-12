import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPrice extends StatelessWidget {
  const AddPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 45.w,
      children: [
        Text(
          'ريال',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'TajawalReg',
            fontSize: 28.sp,
          ),
        ),
        Container(
          height: 42.h,
          width: 162.w,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 46,
                spreadRadius: 0,
                color: Color(0xff000000).withOpacity(0.1),
              ),
            ],
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            autocorrect: false,
            enableSuggestions: true,
            style: TextStyle(
              fontFamily: 'TajawalReg',
              fontSize: 20.sp,
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
        ),
      ],
    );
  }
}
