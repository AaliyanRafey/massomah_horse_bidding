import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:obaiah_developers/view_models/toggle_controller.dart';

class CustomToggle extends StatelessWidget {
  final bool initialValue; // ✅ can set true/false when using
  final String? labelOn;
  final String? labelOff;

  const CustomToggle({
    super.key,
    this.initialValue = false,
    this.labelOn,
    this.labelOff,
  });

  @override
  Widget build(BuildContext context) {
    // Each toggle gets its own controller with its own initial value
    final ToggleController controller = Get.put(
      ToggleController(initialValue: initialValue),
      tag: UniqueKey().toString(),
    );

    return Obx(() {
      bool isOn = controller.isToggled.value;

      return Column(
        children: [
          GestureDetector(
            onTap: controller.toggle,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 32.h,
              width: 67.w,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                color: isOn ? const Color(0xffceb386) : Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                border: isOn ? null : Border.all(color: Colors.black, width: 2),
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 150),
                alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  height: 25.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                    color: isOn ? Colors.white : Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          Text(
            isOn ? (labelOn ?? 'مفعل') : (labelOff ?? 'مغلق'),
            style: TextStyle(
              fontFamily: 'TajawalB',
              fontSize: 10.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      );
    });
  }
}
