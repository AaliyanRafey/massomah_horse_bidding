import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/utils/widgets/checkbox.dart';
import 'package:obaiah_developers/utils/widgets/reuseable_row.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // kindda app bar
                  Row(
                    spacing: 65.w,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.toNamed(RoutesName.auctionListingView);
                        },
                        icon: Icon(Icons.arrow_back_rounded, size: 30.r),
                      ),
                      Text(
                        'اتمام الشراء',
                        style: TextStyle(
                          fontFamily: 'TajawalB',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  //تفاصيل الحصان
                  Container(
                    height: 270.h,
                    width: 347,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          spreadRadius: 0,
                          color: Color(0xff000000).withOpacity(0.09),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20.h,
                          right: 15.w,
                          child: Text(
                            'تفاصيل الحصان',
                            style: TextStyle(
                              fontFamily: 'TajawalReg',
                              fontWeight: FontWeight.w700,
                              fontSize: 13.5.sp,
                              color: Color(0xffCEB386),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 168.h,
                              width: 155.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 2),
                                    blurRadius: 0,
                                    color: Color(0xffCeb386).withOpacity(0.5),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/h3.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //row 1
                                Row(
                                  spacing: 20.w,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'الاسم',
                                          style: TextStyle(
                                            fontFamily: 'TajawalB',
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff404044),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          '  منار الاندلس',
                                          style: TextStyle(
                                            fontFamily: 'TajawalReg',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff404044),
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'النوع',
                                          style: TextStyle(
                                            fontFamily: 'TajawalB',
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff404044),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          'فرس',
                                          style: TextStyle(
                                            fontFamily: 'TajawalReg',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff404044),
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h),
                                Row(
                                  spacing: 41.w,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'الطول',
                                          style: TextStyle(
                                            fontFamily: 'TajawalB',
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff404044),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          '185 سم',
                                          style: TextStyle(
                                            fontFamily: 'TajawalReg',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff404044),
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'اللون',
                                          style: TextStyle(
                                            fontFamily: 'TajawalB',
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff404044),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          'أبيض',
                                          style: TextStyle(
                                            fontFamily: 'TajawalReg',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff404044),
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h),
                                //row 2
                                Row(
                                  spacing: 28.w,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'العسف',
                                          style: TextStyle(
                                            fontFamily: 'TajawalB',
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff404044),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          'معسوف',
                                          style: TextStyle(
                                            fontFamily: 'TajawalReg',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff404044),
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'العمر',
                                          style: TextStyle(
                                            fontFamily: 'TajawalB',
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff404044),
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                        Text(
                                          '2س5 ش',
                                          style: TextStyle(
                                            fontFamily: 'TajawalReg',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff404044),
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                //row 3,
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 10.h,
                          right: 15.w,
                          child: Text(
                            '5،500 ريال',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 22.5.sp,
                              color: Color(0xffCEB386),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  // naming, address , city, number
                  Container(
                    height: 190.h,
                    width: 347,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          spreadRadius: 0,
                          color: Color(0xff000000).withOpacity(0.09),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 36.h,
                              width: 273.91635131835938.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 46,
                                    color: Color(0xff000000).withOpacity(0.2),
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.name,

                                autocorrect: false,
                                enableSuggestions: true,

                                style: TextStyle(
                                  fontFamily: 'TajawalReg',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                                decoration: InputDecoration(
                                  border:
                                      InputBorder.none, // removes the underline
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.zero, // keeps text centered
                                ),
                              ),
                            ),
                            Container(
                              height: 36.h,
                              width: 273.91635131835938.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 46,
                                    color: Color(0xff000000).withOpacity(0.2),
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.name,

                                autocorrect: false,
                                enableSuggestions: true,

                                style: TextStyle(
                                  fontFamily: 'TajawalReg',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                                decoration: InputDecoration(
                                  border:
                                      InputBorder.none, // removes the underline
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.zero, // keeps text centered
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 36.h,
                                  width: 146.91635131835938.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 10),
                                        blurRadius: 46,
                                        color: Color(
                                          0xff000000,
                                        ).withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.name,

                                    autocorrect: false,
                                    enableSuggestions: true,

                                    style: TextStyle(
                                      fontFamily: 'TajawalReg',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder
                                          .none, // removes the underline
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets
                                          .zero, // keeps text centered
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 36.h,
                                  width: 146.91635131835938.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 10),
                                        blurRadius: 46,
                                        color: Color(
                                          0xff000000,
                                        ).withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.name,

                                    autocorrect: false,
                                    enableSuggestions: true,

                                    style: TextStyle(
                                      fontFamily: 'TajawalReg',
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder
                                          .none, // removes the underline
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets
                                          .zero, // keeps text centered
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 7.h,

                          left: 140.w,

                          child: Text(
                            'الاسم',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 64.h,
                          left: 127.w,
                          child: Text(
                            'رقم الجوال',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 123.h,
                          left: 38.w,
                          child: Text(
                            'المدينة / المحافظة',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 11.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 123.h,
                          right: 67.w,
                          child: Text(
                            'المنطقة',
                            style: TextStyle(
                              fontFamily: 'TajawalB',
                              fontWeight: FontWeight.w900,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Stack(
                    children: [
                      Positioned(
                        top: -10.h,
                        left: 65.w,
                        child: Text(
                          'ينصح به!',
                          style: TextStyle(
                            fontFamily: 'TajawalReg',
                            fontWeight: FontWeight.w700,
                            fontSize: 24.5.sp,
                            color: Color(0xffCEB386),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 73.h,
                            width: 213.69.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 46,
                                  spreadRadius: 0,
                                  color: Colors.black.withOpacity(0.09),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.r),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'العمر',
                                        style: TextStyle(
                                          fontFamily: 'TajawalB',
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xff404044),
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      SizedBox(height: 6.h),
                                      Text(
                                        '2س5 ش',
                                        style: TextStyle(
                                          fontFamily: 'TajawalReg',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff404044),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'الاسم',
                                        style: TextStyle(
                                          fontFamily: 'TajawalB',
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xff404044),
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      SizedBox(height: 6.h),
                                      Text(
                                        '  منار الاندلس',
                                        style: TextStyle(
                                          fontFamily: 'TajawalReg',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff404044),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'النوع',
                                        style: TextStyle(
                                          fontFamily: 'TajawalB',
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xff404044),
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      SizedBox(height: 6.h),
                                      Text(
                                        'فرس',
                                        style: TextStyle(
                                          fontFamily: 'TajawalReg',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff404044),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'نقل الخيل',
                                style: TextStyle(
                                  fontFamily: 'TajawalReg',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffceb386),
                                  fontSize: 15.sp,
                                ),
                              ),
                              Text(
                                'بنقل الخيل الى موقعك \nسيقوم احد مندوبينا',
                                style: TextStyle(
                                  fontFamily: 'TajawalReg',
                                  fontWeight: FontWeight.w600,

                                  fontSize: 10.sp,
                                ),
                              ),
                              Row(
                                spacing: 15.w,

                                children: [
                                  Text(
                                    'من قبلكم\n,نعم الرجاء نقله ',
                                    style: TextStyle(
                                      fontFamily: 'TajawalReg',
                                      fontWeight: FontWeight.w600,

                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  FancyCheckbox(
                                    h: 14.h,
                                    w: 14.w,
                                    initialValue: false,
                                    onChanged: (value) {
                                      print("Checked? $value");
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 502.h,
                    width: 347.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 46,
                          spreadRadius: 0,
                          color: Colors.black.withOpacity(0.05),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          height: 250.h,
                          width: 296.w,
                          padding: EdgeInsets.all(14.r),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 46,
                                spreadRadius: 0,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReusableRow(
                                leftText: '5،238 ريال',
                                rightText: 'المجموع: ',
                              ),
                              ReusableRow(
                                leftText: '262 ريال',
                                rightText: 'عمولة الموقع:',
                              ),
                              ReusableRow(
                                leftText: '500 ريال',
                                rightText: 'قيمة النقل:',
                              ),
                              ReusableRow(
                                leftText: '0.00 ريال',
                                rightText: 'الخصم:',
                              ),
                              ReusableRow(
                                leftText: '6,000 ريال',
                                rightText: 'الإجمالي:',
                              ),
                              ReusableRow(
                                leftText: '-3,000 ريال',
                                rightText: 'رصيد المحفظة:',
                              ),
                              Container(
                                height: 41.h,
                                width: 280.w,
                                padding: EdgeInsets.all(10.r),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Color(0xffceb386).withOpacity(.24),
                                ),
                                child: ReusableRow(
                                  leftText: '3،000 ريال',
                                  rightText: 'المطلوب سداده الآن:',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/visa.png',
                              height: 64.h,
                              width: 170.w,
                              fit: BoxFit.fitWidth,
                            ),
                            Image.asset(
                              'assets/images/mada.png',
                              height: 64.h,
                              width: 170.w,
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () => Get.toNamed(RoutesName.mainScreen),
                          child: Container(
                            height: 37.h,
                            width: 289.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.black,
                            ),
                            child: Image.asset(
                              'assets/images/applepay.png',

                              height: 30.h,
                              width: 30.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 100.h),
                ],
              ),
              Positioned(
                top: 550.h,
                left: 95.w,
                child: Text(
                  'ينصح به!',
                  style: TextStyle(
                    fontFamily: 'TajawalReg',
                    fontWeight: FontWeight.w700,
                    fontSize: 19.5.sp,
                    color: Color(0xffCEB386),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
