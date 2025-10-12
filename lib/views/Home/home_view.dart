import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:obaiah_developers/model/horse_model.dart';
import 'package:obaiah_developers/utils/widgets/horse_item_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.w),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/h1.png',
                          fit: BoxFit.fitWidth,
                          width: 337.w,
                          height: 137.h,
                          filterQuality: FilterQuality.high,
                        ),
                        Text(
                          'بنر اعلاني',
                          style: TextStyle(
                            fontFamily: 'TajawalB',
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: Colors.white, // Important for contrast
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 3,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Text(
                      'اخر الأحصنة',
                      style: TextStyle(
                        fontFamily: 'TajawalB',
                        fontWeight: FontWeight.w900,
                        fontSize: 22.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.h,
                      crossAxisSpacing: 8.h,
                      childAspectRatio: 0.52,
                    ),
                    itemCount: horseCard.length,
                    itemBuilder: (context, index) {
                      final horses = horseCard[index];
                      return HorseItemCard(
                        image: horses.image,
                        name: horses.name,
                        year: horses.year,
                        city: horses.city,
                        price: horses.price,
                      );
                    },
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
