import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/text_app.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class OfferCardWidget extends StatelessWidget {
  const OfferCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 32.0.h,
      padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 8.0.h),
      color: ColorApp.orange.withAlpha(50),
      child: Row(
        children: [
          Icon(Icons.check, color: ColorApp.green, size: 15.0.sp),
          Gap(4.0.w),
          Text(
            TextApp.freeShipping,
            style: getSmallStyle(color: ColorApp.green),
          ),
          Spacer(),
          Text(
            TextApp.anyOrderNow,
            style: getSmallStyle(color: ColorApp.charcoal, fontSize: 10.0.sp),
          ),
        ],
      ),
    );
  }
}
