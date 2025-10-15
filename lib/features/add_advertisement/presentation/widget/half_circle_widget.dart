import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class HalfCircleWidget extends StatelessWidget {
  const HalfCircleWidget({super.key, required this.counter});
  final String counter;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 71.0.w,
          height: 42.0.h,
          decoration: BoxDecoration(
            color: Colors.green.withAlpha(20),
            border: Border(
              right: BorderSide(color: Colors.green, width: 2.0.w),
              left: BorderSide(color: Colors.green, width: 2.0.w),
              top: BorderSide(color: Colors.green, width: 2.0.w),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0.r),
              topRight: Radius.circular(32.0.r),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            counter.toString(),
            style: getBodyStyle(
              context: context,
              fontSize: 14.0.sp,
              color: ColorApp.green,
            ),
          ),
        ),
        SizedBox(
          width: 70.0.w,
          child: Text(
            "ضعف عدد المشاهدات",
            style: TextStyle(
              fontSize: 12.0.sp,
              color: ColorApp.green,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
