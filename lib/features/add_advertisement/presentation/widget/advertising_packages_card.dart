import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/add_advertisement/presentation/widget/description_package.dart';
import 'package:otex/features/add_advertisement/presentation/widget/half_circle_widget.dart';

class AdvertisingPackagesCard extends StatelessWidget {
  const AdvertisingPackagesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.r),
        border: Border.all(color: ColorApp.charcoal.withAlpha(60)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text("اساسيات", style: getBodyStyle(context: context)),
              Spacer(),
              Text(
                "43.000",
                style: getBodyStyle(context: context, color: ColorApp.red),
              ),
            ],
          ),
          Divider(endIndent: 10.0.w, indent: 10.0.w),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    DescriptionPackage(
                      iconData: Icons.abc_outlined,
                      text: "صلاحية الأعلان 30 يوم",
                    ),
                    DescriptionPackage(
                      iconData: Icons.abc_outlined,
                      text: "صلاحية الأعلان 30 يوم",
                    ),
                    DescriptionPackage(
                      iconData: Icons.abc_outlined,
                      text: "صلاحية الأعلان 30 يوم",
                    ),
                    DescriptionPackage(
                      iconData: Icons.abc_outlined,
                      text: "صلاحية الأعلان 30 يوم",
                    ),
                  ],
                ),
              ),
              HalfCircleWidget(counter: "18"),
            ],
          ),
        ],
      ),
    );
  }
}
