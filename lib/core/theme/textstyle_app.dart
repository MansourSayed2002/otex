import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theme/color_app.dart';

getTitleStyle({
  Color? color,
  FontWeight? fontWeight,
  double? fontSize,
  required BuildContext context,
}) => TextStyle(
  fontSize: fontSize ?? 24.0.sp,
  fontWeight: fontWeight ?? FontWeight.w500,
  color: color ?? ColorApp.charcoal,
);

getBodyStyle({
  Color? color,
  FontWeight? fontWeight,
  double? fontSize,
  required BuildContext context,
}) => TextStyle(
  fontSize: fontSize ?? 16.0.sp,
  fontWeight: fontWeight ?? FontWeight.bold,
  color: color ?? ColorApp.charcoal,
);

getSmallStyle({
  Color? color,
  FontWeight? fontWeight,
  double? fontSize,
  double? height,
}) => TextStyle(
  fontSize: fontSize ?? 12.0.sp,
  fontWeight: fontWeight ?? FontWeight.w400,
  color: color ?? ColorApp.charcoal.withAlpha(80),
  height: height,
);
