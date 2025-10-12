import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/model/horse_model2.dart';
import 'package:obaiah_developers/utils/widgets/horse_card2.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 30.r,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'الإيواء',
                      style: TextStyle(
                        fontFamily: 'TajawalB',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xffceb386),
                      ),
                    ),
                    SizedBox(width: 40.w), // to balance row
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 10.w,
                  childAspectRatio: 176 / 340,
                ),
                itemCount: horsemodel2.length,
                itemBuilder: (context, index) {
                  final horse = horsemodel2[index];
                  return HorseCard2(horse: horse);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
