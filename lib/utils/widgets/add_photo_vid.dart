import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhotoVid extends StatelessWidget {
  final String text;
  const AddPhotoVid({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 30.h,
        width: 122.w,
        decoration: BoxDecoration(
          color: Color(0xffCEB386).withOpacity(0.5),
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
              fontSize: 12.sp,
            ),
          ),
        ),
      ),
    );
  }
}
