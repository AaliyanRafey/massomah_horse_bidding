import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorseItemCard extends StatelessWidget {
  final String image, name, year, city, price;

  const HorseItemCard({
    super.key,
    required this.image,
    required this.name,
    required this.year,
    required this.city,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            '{Username}: المالك ',
            style: TextStyle(
              fontFamily: 'TajawalReg',
              fontWeight: FontWeight.w900,
              fontSize: 10.sp,
            ),
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
            child: Image.asset(image, fit: BoxFit.fitHeight),
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'الموقع',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontWeight: FontWeight.w900,
                      color: Color(0xff404044),
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    city,
                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff404044),
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'العمر',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontWeight: FontWeight.w900,
                      color: Color(0xff404044),
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    year,
                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff404044),
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'النوع',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontWeight: FontWeight.w900,
                      color: Color(0xff404044),
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'TajawalReg',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff404044),
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 10.h),
          Center(
            child: Text(
              price,
              style: TextStyle(
                fontFamily: 'TajawalB',
                fontWeight: FontWeight.w900,
                color: Color(0xffCEB386),
                fontSize: 18.5.sp,
              ),
            ),
          ),

          Center(
            child: Container(
              width: 80.w,
              height: 32.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.r),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: OutlinedButton(
                onPressed: () {
                  // your action
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white, // fill color
                  side: BorderSide(
                    color: Color(0xffceb386),
                    width: 1.5,
                  ), // border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  minimumSize: Size(80.w, 30.h), // width & height
                  padding: EdgeInsets.zero, // remove default padding
                ),
                child: Text(
                  "كافل التفاصيل", // add label here
                  style: TextStyle(
                    fontFamily: 'TajawalB',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
