import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class CustomRichTextWidget extends StatelessWidget {
  const CustomRichTextWidget({
    super.key,
    required this.textone,
    required this.texttwo,
  });
  final String textone;
  final String texttwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: getSmallStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: ColorApp.red,
          ),
        ),
        Expanded(
          child: Text(
            "/$texttwo",

            style: TextStyle(
              color: ColorApp.charcoal.withAlpha(100),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ),
      ],
    );
  }
}
