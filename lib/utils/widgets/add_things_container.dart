import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddThingsContainer extends StatelessWidget {
  final String text;
  const AddThingsContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 46,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.09),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'TajawalReg',
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
