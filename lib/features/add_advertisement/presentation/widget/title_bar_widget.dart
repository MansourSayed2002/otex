import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class TitleBarWidget extends StatelessWidget {
  const TitleBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0.h,
      width: 140.0.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(ImageApp.rectangle)),
      ),
      child: Text(
        title,
        style: getSmallStyle(color: ColorApp.orange, fontSize: 11.0.sp),
      ),
    );
  }
}
