import 'package:flutter/material.dart';

import '../screens/dash_board_screen.dart';
import '../screens/login_screen.dart';
import '../screens/otp_screen.dart';
import '../screens/splash_screen.dart';
import 'page_name.dart';

Route<dynamic> controller(RouteSettings settings){
  switch (settings.name) {
    case PageNameConstants.splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case PageNameConstants.loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case PageNameConstants.otpScreen:
      return MaterialPageRoute(builder: (context) => const OtpScreen());
    case PageNameConstants.dashBoardScreen:
      return MaterialPageRoute(builder: (context) => const DashBoardScreen());
    default:
      throw('This route name does not exit');
  }
}