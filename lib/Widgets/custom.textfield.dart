import 'package:flutter/material.dart';

import '../Utils/Constant/color.dart';

class CustomTextField {
  static customTextField(
      {required TextEditingController textEditingController,
      required String hintText,
      int? maxLength,
      IconData? prefix,
      required TextInputType? textInputType,
      String? Function(String?)? validator,
      Function(String)? onChanged}) {
    return TextFormField(

      keyboardType: textInputType,
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: onChanged,
      controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(

        prefixIcon: Icon(
          prefix,
          color: MyColors.blackColor,
        ),
        fillColor: MyColors.whiteColor,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: MyColors.primaryColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            width: 1.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: MyColors.blackColor),
        ),
      ),
    );
  }
}
