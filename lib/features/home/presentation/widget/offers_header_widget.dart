import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/text_app.dart' show TextApp;
import 'package:otex/core/extension/navigator_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/filter/presentation/screen/filter_screen.dart';

class OffersHeaderWidget extends StatelessWidget {
  const OffersHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TextApp.offersExplorers,
          style: getBodyStyle(context: context, fontWeight: FontWeight.w500),
        ),
        InkWell(
          onTap: () {
            context.push(FilterScreen());
          },
          child: Row(
            children: [
              Text(TextApp.everyOne, style: getBodyStyle(context: context)),
              Gap(3.0.w),
              Icon(Icons.arrow_forward, size: 15.0.sp),
            ],
          ),
        ),
      ],
    );
  }
}
