import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/features/home/presentation/cubit/home_cubit_cubit.dart';
import 'package:otex/features/home/presentation/widget/offer_card_widget.dart';
import 'package:otex/features/home/presentation/widget/offers_header_widget.dart';
import 'package:otex/features/home/presentation/widget/products_widget.dart';
import 'package:otex/features/home/presentation/widget/sections_product_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          HomeCubit()
            ..getProduct()
            ..getCategories(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.0.h),
          child: Column(
            children: [
              OffersHeaderWidget(),
              Gap(12.0.h),
              SectionsProductWidget(),
              Gap(33.0.h),
              OfferCardWidget(),
              Gap(20.0.h),
              Expanded(child: ProductsWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
