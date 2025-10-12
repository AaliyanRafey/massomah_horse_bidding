import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAge extends StatelessWidget {
  const AddAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.h,
      width: 128.w,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15.w,
        children: [
          Container(
            height: 18.h,
            width: 37.w,
            decoration: BoxDecoration(
              color: Color(0xffE8E9EF),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
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
          ),
          Container(
            height: 18.h,
            width: 37.w,
            decoration: BoxDecoration(
              color: Color(0xffE8E9EF),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
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
          ),
        ],
      ),
    );
  }
}
