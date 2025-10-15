import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/constants/product_list.dart';
import 'package:otex/core/shared/custom_rich_text_widget.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class TitleAndPriceWidget extends StatelessWidget {
  const TitleAndPriceWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                productList[index].name.toString(),
                overflow: TextOverflow.ellipsis,
                style: getBodyStyle(
                  context: context,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SvgPicture.asset(IconApp.offer, width: 16.0.w),
          ],
        ),
        Gap(8.0.h),
        Row(
          children: [
            Expanded(
              child: CustomRichTextWidget(
                textone: productList[index].discountprice.toString(),
                texttwo: productList[index].price.toString(),
              ),
            ),
            Gap(3.5.w),
            Icon(Icons.favorite_border_outlined),
          ],
        ),
      ],
    );
  }
}

class SellsAndLogoCompany extends StatelessWidget {
  const SellsAndLogoCompany({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.local_fire_department_outlined,
              size: 16.0.sp,
              color: ColorApp.charcoal.withAlpha(50),
            ),
            Gap(4.0.w),
            Text(
              productList[index].sale.toString(),
              style: getSmallStyle(fontSize: 10.0.sp),
            ),
          ],
        ),
        Gap(27.0.h),
        Row(
          children: [
            CircleAvatar(
              radius: 15.0.r,
              backgroundColor: ColorApp.blue.withAlpha(20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -10.0.h,
                    right: -10.0.w,
                    child: SvgPicture.asset(IconApp.check, width: 15.0.w),
                  ),
                  SvgPicture.asset(IconApp.badgeCompany, width: 20.0.w),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.0.h),
              decoration: BoxDecoration(
                border: Border.all(color: ColorApp.charcoal.withAlpha(70)),
              ),
              child: SvgPicture.asset(IconApp.addShopping),
            ),
            Gap(20.0.w),
            Image.asset(ImageApp.logo, width: 20.0.w),
          ],
        ),
      ],
    );
  }
}
