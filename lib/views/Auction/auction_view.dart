import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:obaiah_developers/utils/widgets/auction_tile.dart';

class AuctionView extends StatefulWidget {
  const AuctionView({super.key});

  @override
  State<AuctionView> createState() => _AuctionViewState();
}

class _AuctionViewState extends State<AuctionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Container(
                    height: 88.h,
                    width: 327.h,
                    decoration: BoxDecoration(
                      color: Color(0xffCEB386).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 20.h,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    ': رصيدك هو\n', // added \n to move to next line
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12.sp,
                                  color: Color(0xff404044),
                                ),
                              ),
                              TextSpan(
                                text: 'ريال 5,000',
                                style: TextStyle(
                                  fontFamily: 'TajawalB',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25.sp,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign
                              .center, // optional, aligns the whole thing
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.r),
                    child: Text(
                      'مزادات ستنتهي قريباً',
                      style: TextStyle(
                        fontFamily: 'TajawalB',
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                AuctionTile(image: 'assets/images/h6.png'),
                SizedBox(height: 20.h),
                AuctionTile(image: 'assets/images/h8.png'),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
