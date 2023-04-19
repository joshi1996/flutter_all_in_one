import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_constants.dart';
import '../utils/colors.dart';
import '../utils/custom_text.dart';
import '../utils/fonts/app_font.dart';
import '../utils/fonts/app_font_style.dart';
import '../utils/fonts/app_font_weight.dart';
import '../utils/image_name.dart';
import '../utils/page_name.dart';
import '../widgets/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Center(
              child: Image.asset(ImageName.splashImage, fit: BoxFit.cover,
                height: 100 * (SizeConfig.heightMultiplier)!,
                width: 100 * (SizeConfig.widthMultiplier)!,
              ),
            ),
            Positioned(
              top: 44 * (SizeConfig.heightMultiplier)!,
              bottom: 43 * (SizeConfig.heightMultiplier)!,
              left: 20 * (SizeConfig.widthMultiplier)!,
              right: 20 * (SizeConfig.widthMultiplier)!,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 2*(SizeConfig.heightMultiplier)!),
                    child: MntSoText(text: AppConstants.welcomeText, size: AppFont.m12, color: AppColor.white, fontWeight: AppFontWeight.weight600, style: AppFontStyle.styleNormal,),
                  ),
                  SvgPicture.asset(ImageName.splashLogo, fit: BoxFit.fill),
                ],
              )
            )
          ],
        )
      ),
    );
  }

  Future<void> getData() async {
    Future.delayed(
      const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, PageNameConstants.loginScreen);
    },);
  }
}
