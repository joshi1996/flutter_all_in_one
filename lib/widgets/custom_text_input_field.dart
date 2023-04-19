import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MntSoTextInputField extends StatelessWidget {
  final TextEditingController _controller;
  final String hint, validation, type;
  final bool editable;
  // preferenceValue;
  const MntSoTextInputField(this._controller, this.hint, this.validation, this.type, this.editable, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9 ]"))],
      maxLength: 25,
      controller: _controller,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        counterText: "",
        // contentPadding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 1.5.h),
        focusedBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(color: AppColor.borderTextColor, width: 1.5),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(color: AppColor.borderTextColor, width: 1.5),
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(color: AppColor.borderTextColor, width: 1.5),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   borderSide: BorderSide(color: AppColor.borderTextColor, width: 1.5),
        // ),
        hintText: hint,
        // hintStyle: const TextStyle(fontFamily: 'h_regular', fontSize: 16, color: AppColor.hintColor),
      ),
    );
  }
}