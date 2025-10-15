import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/filter_type_list.dart';
import 'package:otex/core/constants/text_app.dart';
import 'package:otex/core/extension/navigator_app.dart';
import 'package:otex/core/shared/elevated_button_widget.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/filter/presentation/widget/category_section_widget.dart';
import 'package:otex/features/filter/presentation/widget/chip_widget.dart';
import 'package:otex/features/filter/presentation/widget/fields_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.close),
        ),
        title: Text(
          TextApp.filter,
          style: getTitleStyle(context: context, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Text(
              TextApp.defualtBack,
              style: getBodyStyle(context: context, color: ColorApp.blue),
            ),
          ),
        ],
      ),
      body: CustomBody(),
      bottomNavigationBar: ElevatedButtonWidget(
        title: TextApp.result,
        onTap: () async {},
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CategorySectionWidget(),
          Divider(color: ColorApp.charcoal.withAlpha(70)),
          Gap(20.0.h),
          FieldsWidget(text: TextApp.monthlyInstalments),
          Gap(20.0.h),

          Text(
            TextApp.type,
            style: getBodyStyle(
              context: context,
              color: ColorApp.charcoal.withAlpha(100),
            ),
          ),
          Gap(12.0.h),
          CustomTypeWidget(listwidget: houseTypeList),
          Gap(20.0.h),
          Text(
            TextApp.numberOfRooms,
            style: getBodyStyle(
              context: context,
              color: ColorApp.charcoal.withAlpha(100),
            ),
          ),
          Gap(12.0.h),
          CustomTypeWidget(listwidget: roomTypeList),
          Gap(20.0.h),
          FieldsWidget(
            text: TextApp.price,
            hint1: TextApp.lowPrice,
            hint2: TextApp.highPrice,
          ),
          Gap(20.0.h),
          Text(
            TextApp.payment,
            style: getBodyStyle(
              context: context,
              color: ColorApp.charcoal.withAlpha(100),
            ),
          ),
          Gap(12.0.h),
          CustomTypeWidget(listwidget: paymentTypeList),
          Gap(20.0.h),
          Text(
            TextApp.propertyCondition,
            style: getBodyStyle(
              context: context,
              color: ColorApp.charcoal.withAlpha(100),
            ),
          ),
          Gap(12.0.h),
          CustomTypeWidget(listwidget: buildingTypeList),
        ],
      ),
    );
  }
}
