import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/view_models/time_controller.dart';

class AuctionDetailTile extends StatelessWidget {
  final String image;
  AuctionDetailTile({super.key, required this.image});

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
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
        height: 365.h,
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
                  () => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '   الوقت المتبقي\n',
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
                ),
                Text(
                  'أعلى مزايدة\n{You} or {Not You}',
                  style: TextStyle(
                    fontFamily: 'TajawalReg',
                    color: Color(0xff404044),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Container(
              width: 347.w,
              height: 275.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 4),
                    blurRadius: 46,
                    spreadRadius: 5,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.r),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }
}
