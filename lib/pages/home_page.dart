import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../utils/colors.dart';
import '../utils/custom_text.dart';
import '../utils/fonts/app_font.dart';
import '../utils/fonts/app_font_weight.dart';
import '../utils/image_name.dart';
import '../widgets/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 30 * (SizeConfig.heightMultiplier)!,
              child: Stack(
                children: [
                  Positioned(
                    left: -13.5 * (SizeConfig.widthMultiplier)!,
                    right: -13.5 * (SizeConfig.widthMultiplier)!,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 0.5 * (SizeConfig.heightMultiplier)!),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            AppColor.primaryColor,
                            AppColor.secondaryColor,
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(300 * (SizeConfig.widthMultiplier)!),
                          bottomRight: Radius.circular(300 * (SizeConfig.widthMultiplier)!),
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 18 * (SizeConfig.widthMultiplier)!, right: 18 * (SizeConfig.widthMultiplier)!),
                        padding: EdgeInsets.only(bottom: 0.5 * (SizeConfig.heightMultiplier)!),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MntSoText(text: "Welcome,", size: AppFont.m8, color: AppColor.white, fontWeight: AppFontWeight.weight400, align: TextAlign.start,),
                                MntSoText(text: "Mohan Sharma", size: AppFont.m12, color: AppColor.white, fontWeight: AppFontWeight.weight600),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1 * (SizeConfig.heightMultiplier)!), // Image border
                              child: SizedBox(
                                height: 6 * (SizeConfig.heightMultiplier)!,
                                width: 12 * (SizeConfig.widthMultiplier)!,
                                child: Image.asset(ImageName.dummyProfileImage, fit: BoxFit.fill),
                              )
                            )
                          ],
                        ),
                      ),
                      height: 27.5 * (SizeConfig.heightMultiplier)!,
                    ),
                  ),
                  Positioned(
                    top: 24 * (SizeConfig.heightMultiplier)!,
                    left: 30 * (SizeConfig.widthMultiplier)!,
                    right: 30 * (SizeConfig.widthMultiplier)!,
                    child: Container(
                      height: 6 * (SizeConfig.heightMultiplier)!,
                      width: 20 * (SizeConfig.widthMultiplier)!,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            AppColor.primaryColor,
                            AppColor.secondaryColor,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(1.5 * (SizeConfig.heightMultiplier)!),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.white.withOpacity(0.45),
                            spreadRadius: 5,
                            blurRadius: 10, // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(ImageName.myTeamImage),
                          MntSoText(text: AppConstants.myTeamText, size: AppFont.m8, color: AppColor.white, fontWeight: AppFontWeight.weight600),
                        ],
                      )
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
