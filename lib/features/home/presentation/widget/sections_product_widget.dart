import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/sections_list.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class SectionsProductWidget extends StatelessWidget {
  const SectionsProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 60.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: sectionsList.length,
            itemBuilder: (context, index) => Container(
              alignment: Alignment.center,
              width: 94.0.w,
              height: 41.0.h,
              margin: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(color: ColorApp.charcoal.withAlpha(25)),
                color: index == 0
                    ? ColorApp.orange.withAlpha(25)
                    : Colors.white,
              ),
              child: Text(
                sectionsList[index],
                style: getSmallStyle(
                  fontSize: 14.sp,
                  color: index == 0 ? ColorApp.orange : ColorApp.charcoal,
                ),
              ),
            ),
          ),
        ),
        Gap(33.0.h),
        SizedBox(
          width: double.infinity,
          height: 100.0.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: sectionsList.length,
            itemBuilder: (context, index) => SizedBox(
              height: 78.0.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 73.0.w,
                    height: 56.0.h,
                    margin: EdgeInsets.symmetric(
                      horizontal: 12.0.w,
                      vertical: 12.0.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(
                        color: ColorApp.charcoal.withAlpha(25),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          subCategotyList[index].image.toString(),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    subCategotyList[index].name.toString(),
                    style: getSmallStyle(color: ColorApp.charcoal),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
