import 'package:flutter/material.dart';
import 'package:mnt_so/utils/fonts/app_font.dart';
import 'package:mnt_so/widgets/size_config.dart';

import '../utils/colors.dart';
import '../utils/fonts/app_font_weight.dart';

class OtpWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool first, last;
  const OtpWidget(this.controller, this.first, this.last, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 6 * (SizeConfig.heightMultiplier)!,
      width: 12 * (SizeConfig.widthMultiplier)!,
      child: TextFormField(
        autofocus: last,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        style: TextStyle(
          fontWeight: AppFontWeight.weight600,
          fontSize: AppFont.m12,
          color: AppColor.primaryColor
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor, width: 0.7 * (SizeConfig.widthMultiplier)!),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor, width: 0.7 * (SizeConfig.widthMultiplier)!),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor, width: 0.7 * (SizeConfig.widthMultiplier)!),
          ),
          counterText: '',
          contentPadding: EdgeInsets.symmetric(
            vertical: 1 * (SizeConfig.heightMultiplier)!,
            horizontal: 4 * (SizeConfig.widthMultiplier)!
          ),
          hintStyle: TextStyle(color: AppColor.hintTextColor, fontSize: AppFont.m12,),
        ),
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }
}
