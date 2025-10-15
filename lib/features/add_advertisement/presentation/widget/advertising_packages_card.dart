import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/function/icon_feature.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/add_advertisement/data/model/plans_model.dart';
import 'package:otex/features/add_advertisement/presentation/widget/check_box_widget.dart';
import 'package:otex/features/add_advertisement/presentation/widget/description_package.dart';
import 'package:otex/features/add_advertisement/presentation/widget/half_circle_widget.dart';
import 'package:otex/features/add_advertisement/presentation/widget/title_bar_widget.dart';

class AdvertisingPackagesCard extends StatelessWidget {
  const AdvertisingPackagesCard({super.key, required this.plans});
  final PlansModel plans;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.r),
        border: Border.all(color: ColorApp.charcoal.withAlpha(60)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          plans.title!.isNotEmpty
              ? Positioned(
                top: -30.0.h,
                right: -20.0.w,
                child: TitleBarWidget(title: plans.title.toString()),
              )
              : SizedBox.shrink(),
          Column(
            children: [
              Row(
                children: [
                  CheckBoxWidget(),
                  Text(
                    plans.name.toString(),
                    style: getBodyStyle(context: context),
                  ),
                  Spacer(),
                  Text(
                    "${plans.price.toString()} ج.م",
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
                          iconData: IconApp.acute,
                          text: "صلاحية الأعلان ${plans.durationDays} يوم",
                        ),
                        plans.highlightDays != 0
                            ? DescriptionPackage(
                              iconData: IconApp.rocket,
                              text:
                                  "رفع لأعلى القائمة كل ${plans.highlightDays} أيام",
                            )
                            : SizedBox.shrink(),
                        plans.features != null
                            ? Column(
                              children: List.generate(
                                stringToMap(plans.features!).keys.length,
                                (index) {
                                  final key =
                                      stringToMap(
                                        plans.features!,
                                      ).keys.toList()[index];
                                  final value =
                                      stringToMap(plans.features!)[key];
                                  return DescriptionPackage(
                                    iconData: iconFeature(key),
                                    text: "$value",
                                    keyfeatue: key,
                                  );
                                },
                              ),
                            )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                  plans.id != 1
                      ? HalfCircleWidget(counter: plans.viewsBoost.toString())
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
