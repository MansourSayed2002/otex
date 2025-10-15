import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class CustomTextFormGlobal extends StatelessWidget {
  const CustomTextFormGlobal({
    super.key,
    this.hinttext,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.obscureText,
    this.onChanged,
    this.prefixIcon,
    this.height,
    this.readOnly,
    this.maxLines,
    this.onTap,
    this.focusNode,
    this.keyboardType,
  });
  final String? hinttext;
  final double? height;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final bool? readOnly;
  final int? maxLines;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      controller: controller,
      focusNode: focusNode,
      onTap: onTap,
      validator: validator,
      onChanged: onChanged,
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      cursorColor: ColorApp.charcoal,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: ColorApp.white,
        hintText: hinttext,
        hintTextDirection: TextDirection.rtl,
        hintStyle: getSmallStyle(fontSize: 14.0.sp),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: BorderSide(color: ColorApp.charcoal.withAlpha(30)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: BorderSide(color: ColorApp.charcoal.withAlpha(30)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: BorderSide(color: ColorApp.charcoal.withAlpha(30)),
        ),
      ),
    );
  }
}
