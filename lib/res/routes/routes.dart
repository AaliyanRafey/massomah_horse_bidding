import 'package:get/get_navigation/get_navigation.dart';
import 'package:obaiah_developers/res/routes/routes_name.dart';
import 'package:obaiah_developers/views/Auction/auction_detail2_view.dart';
import 'package:obaiah_developers/views/Auction/auction_detail_view.dart';
import 'package:obaiah_developers/views/Auction/auction_listing_view.dart';
import 'package:obaiah_developers/views/Auction/checkout_view.dart';
import 'package:obaiah_developers/views/Introduction/landing_view.dart';
import 'package:obaiah_developers/views/Introduction/login_signup_view.dart';
import 'package:obaiah_developers/views/Settings/setting_view.dart';
import 'package:obaiah_developers/views/main_screen.dart';

class AppRoute {
  static appRoutes() => [
    GetPage(
      name: RoutesName.loginSignupView,
      page: () => LoginSignupView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.landingView,
      page: () => LandingView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.mainScreen,
      page: () => MainScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.auctionDetail,
      page: () => AuctionDetailView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.auctionDetail2View,
      page: () => AuctionDetail2View(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.auctionListingView,
      page: () => AuctionListingView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.checkoutView,
      page: () => CheckoutView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
    GetPage(
      name: RoutesName.settingsView,
      page: () => SettingView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(microseconds: 350),
    ),
  ];
}
