import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import '../widgets/size_config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 2 * (SizeConfig.heightMultiplier)!),
                          child: MntSoText(
                              text: AppConstants.welcomeText,
                              size: AppFont.m12,
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
              ),
            ),
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
                  child: TextFormField(
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    textCapitalization: TextCapitalization.words,
                    style: TextStyle(
                        fontWeight: AppFontWeight.weight600,
                        fontSize: AppFont.m12,
                        color: AppColor.primaryColor),
                    decoration: InputDecoration(
                      counterText: "",
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1 * (SizeConfig.heightMultiplier)!,
                          horizontal: 4 * (SizeConfig.widthMultiplier)!),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            bottomRight: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            topLeft: Radius.circular(
                                10 * (SizeConfig.heightMultiplier)!)),
                        borderSide: BorderSide(
                            color: AppColor.primaryColor,
                            width: 1 * (SizeConfig.widthMultiplier)!),
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            bottomRight: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            topLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!)),
                        borderSide: BorderSide(
                            color: AppColor.primaryColor,
                            width: 1 * (SizeConfig.widthMultiplier)!),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            bottomRight: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            topLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!)),
                        borderSide: BorderSide(
                            color: AppColor.primaryColor,
                            width: 1 * (SizeConfig.widthMultiplier)!),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            bottomRight: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!),
                            topLeft: Radius.circular(
                                10 * (SizeConfig.widthMultiplier)!)),
                        borderSide: BorderSide(
                            color: AppColor.primaryColor,
                            width: 1 * (SizeConfig.widthMultiplier)!),
                      ),
                      // hintText: "Enter Your Phone Number",
                      labelText: AppConstants.loginText,
                      labelStyle: TextStyle(
                          fontWeight: AppFontWeight.weight400,
                          fontSize: AppFont.m9,
                          color: AppColor.hintTextColor,
                          height: 0.08 * (SizeConfig.heightMultiplier)!),
                      hintStyle: TextStyle(
                          fontWeight: AppFontWeight.weight400,
                          fontSize: AppFont.m9,
                          color: AppColor.hintTextColor),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PageNameConstants.otpScreen);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      child: MntSoButton(
                          text: AppConstants.loginButtonText,
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
