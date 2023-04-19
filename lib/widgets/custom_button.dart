import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/custom_text.dart';
import '../utils/fonts/app_font_weight.dart';
import 'size_config.dart';

class MntSoButton extends StatelessWidget {
  final String text;
  final double fontSize;
  MntSoButton({
    key,
    required this.text,
    required this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 6 * (SizeConfig.heightMultiplier)!,
      width: 70 * (SizeConfig.widthMultiplier)!,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColor.primaryColor,
            AppColor.secondaryColor,
          ],
        ),
        borderRadius: BorderRadius.circular(1.5 * (SizeConfig.heightMultiplier)!)
      ),
      child: MntSoText(text: text, size: fontSize, color: AppColor.white, fontWeight: AppFontWeight.weight600),
    );
  }
}
