import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:obaiah_developers/model/horse_model2.dart';

class HorseCard2 extends StatelessWidget {
  final HorseModel2 horse;
  const HorseCard2({super.key, required this.horse});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176.w,
      height: 330.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 46,
            color: Color(0xff000000).withOpacity(0.09),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            width: 204.w,
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  color: Color(0xff000000).withOpacity(0.2),
                  blurRadius: 46.r,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      horse.city,
                      style: TextStyle(
                        fontFamily: 'TajawalReg',
                        fontWeight: FontWeight.w900,
                        fontSize: 10.sp,
                      ),
                    ),
                    Icon(Icons.location_on_rounded, color: Color(0xffceb386)),
                  ],
                ),
                Container(
                  height: 168.h,
                  width: 155.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 0,
                        color: Color(0xffCeb386).withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Image.asset(horse.img, fit: BoxFit.fitHeight),
                ),
                SizedBox(height: 3.h),
                //star rows
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 26.r, color: Color(0xffCEB386)),
                    Icon(Icons.star, size: 26.r, color: Color(0xffCEB386)),
                    Icon(Icons.star, size: 26.r, color: Color(0xffCEB386)),
                    Icon(Icons.star, size: 26.r, color: Color(0xffCEB386)),
                    Icon(Icons.star, size: 26.r, color: Color(0xffCFDCE5)),
                  ],
                ),
                SizedBox(height: 3.h),
                Center(
                  child: Text(
                    horse.name,
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontWeight: FontWeight.w900,

                      fontSize: 16.5.sp,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                //800 ريال / الشهر
                Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          horse.price,
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            fontWeight: FontWeight.w900,
                            color: Color(0xffceb386),
                            fontSize: 12.5.sp,
                          ),
                        ),
                      ),
                      Container(
                        width: 80.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            // your action
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white, // fill color
                            side: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ), // border
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            minimumSize: Size(70.w, 27.h), // width & height
                            padding: EdgeInsets.zero, // remove default padding
                          ),
                          child: Text(
                            " التفاصيل", // add label here
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffceb386),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
