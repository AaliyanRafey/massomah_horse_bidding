import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RiyalCard extends StatelessWidget {
  final String credit, date, price, det;
  final Color color;
  const RiyalCard({
    super.key,
    required this.credit,
    required this.date,
    required this.price,
    required this.det,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 80.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                credit,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'TajawalB',
                  fontSize: 14.sp,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'TajawalB',
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'TajawalB',
                  fontSize: 25.sp,
                ),
              ),
              Text(
                det,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'TajawalB',
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
