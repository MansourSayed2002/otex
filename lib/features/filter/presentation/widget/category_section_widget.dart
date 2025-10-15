import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/constants/text_app.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class CategorySectionWidget extends StatelessWidget {
  const CategorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextApp.category,
          style: getBodyStyle(
            context: context,
            color: ColorApp.charcoal.withAlpha(80),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(IconApp.material, width: 20.0.w),
          title: Text(
            TextApp.realEstate,
            style: getSmallStyle(color: ColorApp.charcoal, fontSize: 14.0.sp),
          ),
          subtitle: Text(TextApp.villaSela, style: getSmallStyle()),
          trailing: Text(
            TextApp.change,
            style: getBodyStyle(
              context: context,
              color: ColorApp.blue,
              fontSize: 14.0.sp,
            ),
          ),
        ),
        Divider(color: ColorApp.charcoal.withAlpha(70)),
        ListTile(
          leading: Icon(Icons.location_on_outlined),
          title: Text(
            TextApp.location,
            style: getSmallStyle(color: ColorApp.charcoal, fontSize: 14.0.sp),
          ),
          subtitle: Text(TextApp.egypt, style: getSmallStyle()),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios, size: 15.0.sp),
          ),
        ),
      ],
    );
  }
}
