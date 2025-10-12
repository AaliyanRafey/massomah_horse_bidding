import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color(0xff000000).withOpacity(0.1),
                    blurRadius: 36,
                  ),
                ],
              ),
              child: Center(
                child: TextFormField(
                  onSaved: (pin1) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
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
            ),
            Container(
              height: 60.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color(0xff000000).withOpacity(0.1),
                    blurRadius: 46,
                  ),
                ],
              ),
              child: Center(
                child: TextFormField(
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
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
            ),
            Container(
              height: 60.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color(0xff000000).withOpacity(0.1),
                    blurRadius: 46,
                  ),
                ],
              ),
              child: Center(
                child: TextFormField(
                  onSaved: (pin3) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
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
            ),
            Container(
              height: 60.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color(0xff000000).withOpacity(0.1),
                    blurRadius: 46,
                  ),
                ],
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // removes the underline
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.zero, // keeps text centered
                  ),
                  onSaved: (pin4) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },

                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
