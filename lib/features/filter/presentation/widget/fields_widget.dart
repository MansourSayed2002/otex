import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/shared/custom_text_from_global.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class FieldsWidget extends StatelessWidget {
  const FieldsWidget({super.key, required this.text, this.hint1, this.hint2});
  final String text;
  final String? hint1;
  final String? hint2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: getBodyStyle(
            context: context,
            color: ColorApp.charcoal.withAlpha(100),
          ),
        ),
        Gap(12.0.h),
        Row(
          children: [
            Expanded(child: CustomTextFormGlobal(hinttext: hint1)),
            Gap(12.0.sp),
            Expanded(child: CustomTextFormGlobal(hinttext: hint2)),
          ],
        ),
      ],
    );
  }
}
