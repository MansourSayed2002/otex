import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/text_app.dart';
import 'package:otex/core/shared/elevated_button_widget.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/add_advertisement/presentation/cubit/advertisement_cubit.dart';
import 'package:otex/features/add_advertisement/presentation/widget/advertisement_header_widget.dart';
import 'package:otex/features/add_advertisement/presentation/widget/advertising_packages_card.dart';

class AddAdvertisementScreen extends StatelessWidget {
  const AddAdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AdvertisementCubit()..getPackages(),
      child: Scaffold(
        bottomNavigationBar: ElevatedButtonWidget(
          title: TextApp.next,
          iconData: Icons.arrow_forward,
          onTap: () async {},
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
            child: Column(
              children: [
                AdvertisementHeaderWidget(),
                Gap(10.0.h),
                Expanded(child: AdvertisementsWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdvertisementsWidget extends StatelessWidget {
  const AdvertisementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvertisementCubit, AdvertisementState>(
      builder: (context, state) {
        if (state is AdvertisementError) {
          return Center(child: Text(state.message));
        } else if (state is AdvertisementSuccess) {
          return ListView.builder(
            itemCount: state.plans.length,
            itemBuilder:
                (context, index) => Column(
                  children: [
                    AdvertisingPackagesCard(plans: state.plans[index]),
                    index == 9
                        ? Container(
                          width: double.infinity.w,
                          height: 79.0.h,
                          margin: EdgeInsets.symmetric(
                            horizontal: 16.0.w,
                            vertical: 10.0.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0.w,
                            vertical: 10.0.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0.r),
                            color: ColorApp.charcoal.withAlpha(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "باقات مخصصة لك",
                                style: getBodyStyle(
                                  context: context,
                                  fontSize: 14.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "تواصل معنا لأختيار الباقة المناسبة لك",
                                style: getSmallStyle(color: ColorApp.charcoal),
                              ),
                              Text(
                                "فريق المبيعات",
                                style: getBodyStyle(
                                  context: context,
                                  color: ColorApp.blue,
                                ),
                              ),
                            ],
                          ),
                        )
                        : SizedBox.shrink(),
                  ],
                ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
