import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/utils/widgets/setting_options.dart';
import 'package:obaiah_developers/views/Settings/aladaaat_view.dart';
import 'package:obaiah_developers/views/Settings/almasadah_view.dart';
import 'package:obaiah_developers/views/Settings/hisaabi_view.dart';
import 'package:obaiah_developers/views/Settings/mabeeaani_view.dart';
import 'package:obaiah_developers/views/Settings/mahfaztii_view.dart';
import 'package:obaiah_developers/views/Settings/mushtarbaati_view.dart';
import 'package:obaiah_developers/views/Settings/stabble_view.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //setting name
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
                      color: Colors.transparent,
                    ),
                  ),
                  Text(
                    'الاعدادات',
                    style: TextStyle(
                      fontFamily: 'TajawalB',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SettingOptions(
                    text: 'إسطبلي',
                    img: 'assets/images/s1.png',
                    ontap: () => Get.to(StabbleView()),
                  ),
                  SettingOptions(
                    text: 'حسابي و بياناتي',
                    img: 'assets/images/s2.png',
                    ontap: () => Get.to(HisaabiView()),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Container(
                width: 323.w,
                height: 110.h,
                decoration: BoxDecoration(
                  color: Color(0xffceb386),
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.27),
                    width: 0.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 46,
                      spreadRadius: 0,
                      color: Colors.black.withOpacity(0.09),
                    ),
                  ],
                ),
                child: Row(
                  spacing: 70.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '          رصيدك هو :\n',
                            style: TextStyle(
                              fontFamily: 'Montesserat',
                              fontWeight: FontWeight.w900,
                              fontSize: 12.sp,
                            ),
                          ),
                          TextSpan(
                            text: '500 ريال',
                            style: TextStyle(
                              fontFamily: 'Montesserat',
                              fontWeight: FontWeight.w900,
                              fontSize: 25.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SettingOptions(
                      text: 'محفظتي',
                      img: 'assets/images/s3.png',
                      ontap: () => Get.to(MahfaztiiView()),
                      h: 85.h,
                      w: 95.w,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SettingOptions(
                    text: 'مبيعاتي',
                    img: 'assets/images/s4.png',
                    ontap: () => Get.to(MabeeaaniView()),
                  ),
                  SettingOptions(
                    text: 'مشترياتي',
                    img: 'assets/images/s5.png',
                    ontap: () => Get.to(MushtarbaatiView()),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SettingOptions(
                    text: 'مساعدة',
                    img: 'assets/images/s6.png',
                    ontap: () => Get.to(AlmasadahView()),
                  ),
                  SettingOptions(
                    text: 'الإعدادات',
                    img: 'assets/images/s7.png',
                    ontap: () => Get.to(AladaaatView()),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
