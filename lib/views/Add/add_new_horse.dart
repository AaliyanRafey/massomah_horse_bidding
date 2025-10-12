import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/utils/widgets/add_age.dart';
import 'package:obaiah_developers/utils/widgets/add_height.dart';
import 'package:obaiah_developers/utils/widgets/add_photo_vid.dart';
import 'package:obaiah_developers/utils/widgets/add_price.dart';
import 'package:obaiah_developers/utils/widgets/add_text.dart';
import 'package:obaiah_developers/utils/widgets/add_things_container.dart';
import 'package:obaiah_developers/utils/widgets/checkbox.dart';
import 'package:obaiah_developers/utils/widgets/custom_button.dart';
import 'package:obaiah_developers/utils/widgets/editable_box.dart';
import 'package:obaiah_developers/utils/widgets/select_option.dart';
import 'package:obaiah_developers/view_models/option_controller.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    final OptionController controller = Get.put(OptionController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Stack(
              children: [
                Column(
                  children: [
                    // ✅ Top Bar
                    Row(
                      spacing: 60.w,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.toNamed(RoutesName.mainScreen);
                          },
                          icon: Icon(Icons.arrow_back_rounded, size: 30.r),
                        ),
                        Text(
                          'اضافة حصان جديد',
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            color: const Color(0xffceb386),
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () =>
                              controller.selectOption(0), // <-- correct
                          child: Container(
                            height: 44.h,
                            width: 118.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: controller.selectedIndex.value == 0
                                  ? const Color(0xffceb386).withOpacity(
                                      0.5,
                                    ) // selected
                                  : Colors.grey[300], // unselected
                            ),
                            child: Text(
                              "مزايدة",
                              style: TextStyle(
                                fontFamily: controller.selectedIndex.value == 0
                                    ? 'TajawalB'
                                    : 'TajawalReg',
                                fontWeight: controller.selectedIndex.value == 0
                                    ? FontWeight.w900
                                    : FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () => controller.selectOption(1),
                          child: Container(
                            height: 44.h,
                            width: 118.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: controller.selectedIndex.value == 1
                                  ? const Color(0xffceb386).withOpacity(0.5)
                                  : Colors.grey[300],
                            ),
                            child: Text(
                              "سعر محدد",
                              style: TextStyle(
                                fontFamily: controller.selectedIndex.value == 1
                                    ? 'TajawalB'
                                    : 'TajawalReg',
                                fontSize: 13.sp,
                                fontWeight: controller.selectedIndex.value == 1
                                    ? FontWeight.w900
                                    : FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    //add photos videos container here
                    Container(
                      width: 347.w,
                      height: 302.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 46,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AddThingsContainer(
                                text: 'صورة الخيل \nمن الأمام',
                              ),
                              AddThingsContainer(
                                text: 'صورة الخيل \nمن الأمام',
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AddThingsContainer(
                                text: 'صورة الخيل \nمن الأمام',
                              ),
                              AddThingsContainer(
                                text: 'صورة الخيل \nمن الأمام',
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AddPhotoVid(text: 'اضافة فيديو'),
                              AddPhotoVid(text: 'مزيد من الصور'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    //تفاصيل الحصان
                    Container(
                      height: 334.h,
                      width: 310.w,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 46,
                            color: Color(0xff000000).withOpacity(0.05),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectOption(text1: 'فرس', text2: 'خيل'),
                              AddText(),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [AddText(), AddText()],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [AddText(), AddAge()],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectOption(text1: 'لا', text2: 'نعم'),
                              AddHeight(),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectOption(text1: 'هجين', text2: 'عربي'),
                              SelectOption(text1: 'مصاب', text2: 'سليم'),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [AddText(), AddText()],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      height: 277.h,
                      width: 310.w,
                      padding: EdgeInsets.symmetric(
                        vertical: 40.w,
                        horizontal: 20.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 46,
                            color: Colors.black.withOpacity(0.09),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'بإمكانك هنا كتابة الوصف الاضافي الذي تريد كتابته، مع ملاحظة انه يمنع وضع اي روابط خارجيه او ارقام هواتف او اي بيانات تخالف الشروط و الأحكام الخاصة بالموقع.',
                          style: TextStyle(
                            color: Color(0xff818493),
                            fontSize: 15.sp,
                            fontFamily: 'TajawalReg',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 210.h,
                          width: 231.w,
                          padding: EdgeInsets.symmetric(
                            vertical: 30.w,
                            horizontal: 15.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                color: Color(0xff000000).withOpacity(0.09),
                                blurRadius: 46,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: AlignmentGeometry.topRight,
                            child: Text(
                              'رأي الخبير سيضيف مصداقية و ثقه أكبر لحصانكم، مما يجعله يباع بالسعر المطلوب او حتى بسعر أعلى من المقدر له بسبب رأي الخبير. لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه.',
                              style: TextStyle(
                                color: Color(0xff818493),
                                fontSize: 12.5.sp,
                                fontFamily: 'TajawalReg',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          spacing: 6.h,
                          children: [
                            FancyCheckbox(onChanged: (value) {}, h: 47, w: 47),
                            Text(
                              'اضافة رأي خبير؟',
                              style: TextStyle(
                                fontFamily: 'TajawalReg',
                                fontSize: 13.sp,
                                color: Color(0xffceb386),
                                fontWeight: FontWeight.w900,
                              ),
                            ),

                            Text(
                              'سيتم اضافة 200 ريال \nلعمولة الموقع.',
                              style: TextStyle(
                                fontFamily: 'TajawalReg',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    Container(
                      width: 307.w,
                      height: 67.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 46,
                            spreadRadius: 0,
                            color: Color(0xff000000).withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Center(child: AddPrice()),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EditableBox(text: '0 ريال'),
                        EditableBox(text: '375 ريال'),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    EditableBox(
                      text: '5375 ريال',
                      height: 67.h,
                      width: 306.w,
                      textStyle: TextStyle(
                        fontSize: 32.sp,
                        fontFamily: 'TajawalReg',
                        fontWeight: FontWeight.w900,
                        color: Color(0xffceb386),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 77.h,
                      width: 310.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            color: Color(0xff000000).withOpacity(0.09),
                            spreadRadius: 0,
                            blurRadius: 46,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AddText(height: 30.h, width: 174.w),
                          AddText(height: 30.h, width: 82.w),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      text: 'اضافة',
                      color: Color(0xffceb386),
                      h: 63,
                      w: 320,
                    ),
                    SizedBox(height: 50.h),
                  ],
                ),

                Positioned(
                  top: 50.h,
                  right: 40.w,
                  child: Text(
                    'نوع الإعلان:',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 465.h,
                  left: 115.w,

                  child: Text(
                    'تفاصيل الحصان',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      color: Color(0xffceb386),
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 825.h,
                  left: 128.w,

                  child: Text(
                    'وصف اضافي',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      color: Color(0xffceb386),
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1130.h,
                  left: 86.w,

                  child: Text(
                    'ينصح به!',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      color: Color(0xffceb386),
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1400.h,
                  right: 39.w,

                  child: Text(
                    'السعر: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      color: Color(0xffceb386),
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1490.h,
                  right: 57.w,

                  child: Text(
                    'عمولة الموقع',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1490.h,
                  left: 72.w,

                  child: Text(
                    'رأي الخبير',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1570.h,
                  right: 50.w,

                  child: Text(
                    'اجمالي سعر الحصان هو:',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1660.h,
                  left: 128.w,

                  child: Text(
                    'الحساب البنكي',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      color: Color(0xffceb386),
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1690.h,
                  right: 60.w,

                  child: Text(
                    'اسم البنك',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 1690.h,
                  left: 120.w,

                  child: Text(
                    'رقم الايبان',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 500.h,
                  right: 80.w,

                  child: Text(
                    'اسم الحصان',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 500.h,
                  left: 93.w,

                  child: Text(
                    'النوع',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 550.h,
                  right: 85.w,

                  child: Text(
                    'اسم الأب',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 550.h,
                  left: 90.w,

                  child: Text(
                    'اسم الأم',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 586.h,
                  right: 76.w,

                  child: Text(
                    'اتركه فارغ اذا كان غير معروف',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      fontSize: 5.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 586.h,
                  left: 76.w,

                  child: Text(
                    'اتركه فارغ اذا كان غير معروف',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',
                      fontSize: 5.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 600.h,
                  right: 94.w,

                  child: Text(
                    'العمر',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 602.h,
                  left: 95.w,

                  child: Text(
                    'اللون',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 612.h,
                  right: 62.w,

                  child: Text(
                    'شهر (غير الزامي)',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 5.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 612.h,
                  right: 125.w,

                  child: Text(
                    'سنة',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 6.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 655.h,
                  right: 94.w,

                  child: Text(
                    'الطول',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 655.h,
                  left: 78.w,

                  child: Text(
                    'لديه ثبوتيات؟',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 710.h,
                  right: 90.w,

                  child: Text(
                    'السلامة',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 710.h,
                  left: 90.w,

                  child: Text(
                    'الاصالة',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 760.h,
                  right: 90.w,

                  child: Text(
                    'المنطقة',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 760.h,
                  left: 66.w,

                  child: Text(
                    'المدينة / المحافظة',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TajawalReg',

                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
