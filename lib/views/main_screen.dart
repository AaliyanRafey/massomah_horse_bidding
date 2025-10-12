import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:obaiah_developers/utils/widgets/popup_for_name.dart';
import 'package:obaiah_developers/views/Add/add_new_horse.dart';
import 'package:obaiah_developers/views/Auction/auction_view.dart';
import 'package:obaiah_developers/views/Home/home_view.dart';
import 'package:obaiah_developers/views/More/more_view.dart';
import 'package:obaiah_developers/views/Settings/setting_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 4;
  final List<Widget> screens = [
    SettingView(),
    MoreView(),
    AddView(),
    AuctionView(),
    HomeView(),
  ];

  void onItemtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildNavItem(String assetPath, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemtapped(index),
      child: SvgPicture.asset(
        assetPath,
        color: isSelected ? Color(0xff000000) : Color(0xFF818493),
        height: 20.h,
        width: 20.w,
      ),
    );
  }

  Widget buildAddButton(int index) {
    return GestureDetector(
      onTap: () => onItemtapped(index),
      child: Container(
        height: 25.h,
        width: 25.h,
        decoration: BoxDecoration(
          color: Color(0xffCEB386),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF))),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //Run after build is complete

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // will show popup automatically

      Get.dialog(PopupForName(), barrierDismissible: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 70.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem('assets/icons/settings.svg', 0),
            buildNavItem('assets/icons/more.svg', 1),
            buildAddButton(2),
            buildNavItem('assets/icons/auction.svg', 3),
            buildNavItem('assets/icons/home.svg', 4),
          ],
        ),
      ),
    );
  }
}
