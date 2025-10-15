import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/features/home/data/model/product_model.dart';
import 'package:otex/features/home/presentation/cubit/home_cubit_cubit.dart';
import 'package:otex/features/home/presentation/widget/component_card_product.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is Homeuccess ||
              current is HomeError ||
              current is HomeLoading,
      builder: (context, state) {
        if (state is HomeError) {
          return Text(state.message.toString());
        } else if (state is Homeuccess) {
          return GridView.builder(
            itemCount: state.products.length,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (3 / 8.5).h,
              mainAxisSpacing: 15.0.h,
              crossAxisSpacing: 15.0.w,
            ),
            itemBuilder:
                (context, index) =>
                    ProductCardWidget(product: state.products[index]),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0.r),
        border: Border.all(color: ColorApp.charcoal.withAlpha(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 215.0.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image.toString()),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 9.5.h),
            child: Column(
              children: [
                TitleAndPriceWidget(product: product),
                Gap(9.0.h),
                SellsAndLogoCompany(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
