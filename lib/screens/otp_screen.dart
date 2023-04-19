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
import '../widgets/custom_button.dart';
import '../widgets/otp_input_widget.dart';
import '../widgets/size_config.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        ImageName.splashImage,
                        fit: BoxFit.cover,
                        height: 50 * (SizeConfig.heightMultiplier)!,
                        width: 100 * (SizeConfig.widthMultiplier)!,
                      ),
                    ),
                    Positioned(
                      top: 0 * (SizeConfig.heightMultiplier)!,
                      bottom: 0 * (SizeConfig.heightMultiplier)!,
                      left: 0 * (SizeConfig.widthMultiplier)!,
                      right: 0 * (SizeConfig.widthMultiplier)!,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 2 * (SizeConfig.heightMultiplier)!),
                            child: MntSoText(
                                text: AppConstants.welcomeText,
                                size: AppFont.m17,
                                color: AppColor.white,
                                fontWeight: AppFontWeight.weight600,
                                style: AppFontStyle.styleNormal),
                          ),
                          SvgPicture.asset(ImageName.splashLogo,
                              fit: BoxFit.fill),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(
                        bottom: 4 * (SizeConfig.heightMultiplier)!),
                    width: 85 * (SizeConfig.widthMultiplier)!,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(
                              left: 8 * (SizeConfig.widthMultiplier)!),
                          child: MntSoText(
                            text: AppConstants.otpText,
                            fontWeight: AppFontWeight.weight400,
                            color: AppColor.hintTextColor,
                            size: AppFont.m9,
                            align: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OtpWidget(_fieldOne, true, false),
                            OtpWidget(_fieldTwo, false, false),
                            OtpWidget(_fieldThree, false, false),
                            OtpWidget(_fieldFour, false, true)
                          ],
                        )
                      ],
                    )),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, PageNameConstants.dashBoardScreen);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      child: MntSoButton(
                          text: AppConstants.otpButtonText,
                          fontSize: AppFont.m9)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
