import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:obaiah_developers/res/routes/routes.dart';
import 'package:obaiah_developers/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X base (your Figma size)
      minTextAdapt: true, // allows font auto-scaling
      splitScreenMode: true, // better handling on tablets
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppRoute.appRoutes(),
          home: SplashScreen(),
        );
      },
    );
  }
}
