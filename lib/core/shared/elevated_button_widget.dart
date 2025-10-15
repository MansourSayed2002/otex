import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.iconData,
  });
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 44.0.h,
      margin: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0.r),
        color: ColorApp.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: getBodyStyle(context: context, color: ColorApp.white),
          ),
          Gap(4.0.w),
          Icon(iconData, size: 20.0.sp, color: ColorApp.white),
        ],
      ),
    );
  }
}
