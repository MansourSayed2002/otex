import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class DescriptionPackage extends StatelessWidget {
  const DescriptionPackage({
    super.key,
    required this.iconData,
    required this.text,
  });
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
      child: Row(
        children: [
          Icon(iconData, size: 16.0.sp, color: ColorApp.charcoal),
          Gap(8.0.w),
          Expanded(
            child: Text(
              text,
              style: getBodyStyle(
                context: context,
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
