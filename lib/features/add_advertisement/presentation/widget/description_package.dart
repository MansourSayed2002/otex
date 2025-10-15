import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class DescriptionPackage extends StatelessWidget {
  const DescriptionPackage({
    super.key,
    required this.iconData,
    required this.text,
    this.keyfeatue,
  });
  final String iconData;
  final String text;
  final String? keyfeatue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
      child: Row(
        children: [
          SvgPicture.asset(iconData, width: 16.0.w, height: 16.0.h),
          Gap(8.0.w),
          Expanded(
            child:
                keyfeatue == "keep"
                    ? RichText(
                      text: TextSpan(
                        text: text.split("(").first,
                        style: getSmallStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorApp.charcoal,
                        ),
                        children: [
                          TextSpan(
                            text: text.substring(text.indexOf("(")),
                            style: getSmallStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorApp.red,
                            ),
                          ),
                        ],
                      ),
                    )
                    : Text(
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
