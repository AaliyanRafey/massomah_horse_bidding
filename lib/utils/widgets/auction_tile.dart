import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/view_models/time_controller.dart';

class AuctionTile extends StatelessWidget {
  final String image;
  AuctionTile({super.key, required this.image});

  final TimeController timeController = Get.put(
    TimeController(
      initialDuration: Duration(hours: 08, minutes: 25, seconds: 31),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesName.auctionDetail),
      child: Container(
        padding: EdgeInsets.all(16.r),
        height: 295.h,
        width: 347.w,

        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 36,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '    Start in\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'TajawalReg',
                            color: Color(0xff818493),
                            fontSize: 12.sp,
                          ),
                        ),
                        TextSpan(
                          text: " ${timeController.formattedTime}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                            color: Color(0xff818493),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '{username}:لمالك ',
                  style: TextStyle(
                    fontFamily: 'TajawalReg',
                    color: Color(0xff404044),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 11.h),
            Container(
              width: 320.w,
              height: 157.h,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(18.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    blurRadius: 1,
                    color: Color(0xff000000).withOpacity(0.2),
                  ),
                ],
              ),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesName.auctionDetail);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffceb386), width: 2),
                      ),

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.r),
                          border: Border.all(
                            color: Color(0xff000000),

                            width: 1.5,
                          ),
                        ),
                        child: Container(
                          width: 98.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffceb386),
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              'التفاصيل',
                              style: TextStyle(
                                fontFamily: 'TajawalReg',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '          اعلى مزايدة     \n',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'TajawalReg',
                            fontSize: 12.sp,
                            color: Color(0xff818493),
                          ),
                        ),
                        TextSpan(
                          text: '1،350 ريال',
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            fontWeight: FontWeight.w900,
                            color: Color(0xff000000),
                            fontSize: 22.sp,
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
      ),
    );
  }
}
