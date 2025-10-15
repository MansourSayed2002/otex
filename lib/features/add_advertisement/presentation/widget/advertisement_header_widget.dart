import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/extension/navigator_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class AdvertisementHeaderWidget extends StatelessWidget {
  const AdvertisementHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back_ios, size: 16.0.sp),
            ),

            Text(
              "أختر الباقات اللى تناسبك",
              style: getTitleStyle(context: context),
            ),
          ],
        ),
        Gap(12.0.w),
        Text(
          "أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك",
          style: getSmallStyle(fontSize: 14.0.sp),
        ),
      ],
    );
  }
}
