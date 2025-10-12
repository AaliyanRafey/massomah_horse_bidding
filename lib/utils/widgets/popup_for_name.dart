import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PopupForName extends StatefulWidget {
  const PopupForName({super.key});

  @override
  State<PopupForName> createState() => _PopupForNameState();
}

class _PopupForNameState extends State<PopupForName> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 238.h,
            width: 326.w,
            decoration: BoxDecoration(
              color: const Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 33.h,
                  right: 20.w,
                  left: 20.w,
                  child: Container(
                    height: 34.h,
                    width: 244.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          color: Color(0xff000000).withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: nameController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,

                      autocorrect: false,
                      enableSuggestions: true,

                      style: TextStyle(
                        fontFamily: 'TajawalReg',
                        fontSize: 16.sp,
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
                ),
                Positioned(
                  top: 21.h,

                  left: 126.w,
                  child: Text(
                    'الاسم كامل',
                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontWeight: FontWeight.w900,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  right: 0.w,
                  left: 0.w,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 31.h,
                        width: 135.91635131835938.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 46,
                              color: Color(0xff000000).withOpacity(0.2),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: cityController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.name,

                          autocorrect: false,
                          enableSuggestions: true,

                          style: TextStyle(
                            fontFamily: 'TajawalReg',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w900,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none, // removes the underline
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding:
                                EdgeInsets.zero, // keeps text centered
                          ),
                        ),
                      ),
                      Container(
                        height: 28.h,
                        width: 130.91635131835938.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 46,
                              color: Color(0xff000000).withOpacity(0.2),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: areaController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.name,

                          autocorrect: false,
                          enableSuggestions: true,

                          style: TextStyle(
                            fontFamily: 'TajawalReg',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w900,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none, // removes the underline
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding:
                                EdgeInsets.zero, // keeps text centered
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 84.h,

                  left: 60.w,
                  child: Text(
                    'المدينة',
                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 84.h,

                  left: 210.w,
                  child: Text(
                    'المنطقة',
                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 170.h,
                  right: 100.w,
                  left: 100.w,
                  child: GestureDetector(
                    onTap: () {
                      final name = nameController.text.trim();
                      final city = cityController.text.trim();
                      final area = areaController.text.trim();

                      // return the data

                      Get.back(
                        result: {"name": name, "city": city, "area": area},
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffceb386), width: 2),
                      ),
                      child: Container(
                        height: 37.h,
                        width: 97.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'حفظ',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 19.5.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
