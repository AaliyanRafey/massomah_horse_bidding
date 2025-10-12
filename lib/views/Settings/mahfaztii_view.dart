import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/utils/widgets/custom_buttons.dart';
import 'package:obaiah_developers/utils/widgets/popup_settings.dart';
import 'package:obaiah_developers/utils/widgets/riyal_card.dart';

class MahfaztiiView extends StatelessWidget {
  const MahfaztiiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                spacing: 90.w,
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
                    'المحفظة',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Container(
                height: 88.h,
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color(0xffceb386).withOpacity(0.4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '           رصيدك هو:',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'MontserratB',
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      '5،000 ريال',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'MontserratB',
                        fontSize: 23.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              RiyalCard(
                credit: 'دائن',
                date: '2022/01/11',
                price: '6،400 ريال',
                det: 'للطلب رقم #1544398',
                color: Color(0xff404044).withOpacity(0.4),
              ),
              SizedBox(height: 30.h),
              RiyalCard(
                credit: 'دائن',
                date: '2022/01/11',
                price: '3،000 ريال',
                det: 'للطلب رقم #1544398',
                color: Color(0xff404044).withOpacity(0.4),
              ),
              SizedBox(height: 30.h),
              RiyalCard(
                credit: 'مدين',
                date: '2022/01/11',
                price: '6،400 ريال',
                det: 'عن طريق Apple Pay',
                color: Color(0xffceb386).withOpacity(0.4),
              ),
              SizedBox(height: 180.h),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // ✅ center horizontally
                spacing: 50.w, //

                children: [
                  TapButtton(
                    text: 'استرداد',
                    icon: 'assets/icons/return.svg',
                    color: Color(0xff404044).withOpacity(0.4),
                    ontap: () => Get.back(),
                  ),
                  TapButtton(
                    text: 'اضافة',
                    icon: 'assets/icons/add.svg',
                    color: Color(0xffceb386).withOpacity(0.4),
                    ontap: () {
                      Get.dialog(PopupSettings(), barrierDismissible: false);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
