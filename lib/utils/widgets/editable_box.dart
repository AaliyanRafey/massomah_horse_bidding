import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditableBox extends StatelessWidget {
  final double height;
  final double width;
  final String text;

  final TextStyle? textStyle;

  const EditableBox({
    super.key,
    this.height = 65, // ✅ default height
    this.width = 153, // ✅ default width
    required this.text,

    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h, // ✅ uses default if not passed
      width: width.w, // ✅ uses default if not passed
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 46,
            color: Colors.black.withOpacity(0.09),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style:
              textStyle ??
              TextStyle(
                fontFamily: 'TajawalReg',
                fontWeight: FontWeight.w900,
                fontSize: 15.sp,
              ),
        ),
      ),
    );
  }
}
