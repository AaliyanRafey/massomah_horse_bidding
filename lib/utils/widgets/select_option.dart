import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/view_models/option_controller.dart';

class SelectOption extends StatelessWidget {
  final String text1, text2;
  const SelectOption({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    final OptionController controller = Get.put(OptionController());
    return Container(
      height: 32.h,
      width: 128.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 46,
            color: Color(0xff000000).withOpacity(0.09),
          ),
        ],
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              spacing: 5.w,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'TajawalReg',
                    color: Color(0xff000000),
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.selectOption(-1),
                  child: Container(
                    width: 12.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.selectedIndex.value == 0
                          ? Color(0xffceb386)
                          : Color(0xffD9D9D9),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 5.w,

              children: [
                Text(
                  text2,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'TajawalReg',
                    color: Color(0xff000000),
                  ),
                ),

                GestureDetector(
                  onTap: () => controller.selectOption(-1),
                  child: Container(
                    width: 12.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.selectedIndex.value == 0
                          ? Color(0xffceb386)
                          : Color(0xffD9D9D9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
