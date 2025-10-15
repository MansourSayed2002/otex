import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/product_list.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/features/home/presentation/widget/component_card_product.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 8,
        mainAxisSpacing: 15.0.h,
        crossAxisSpacing: 15.0.w,
      ),
      itemBuilder: (context, index) => ProductCardWidget(index: index),
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.index});
  final int index;
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
                image: AssetImage(productList[index].image.toString()),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 9.5.h),
            child: Column(
              children: [
                TitleAndPriceWidget(index: index),
                Gap(9.0.h),
                SellsAndLogoCompany(index: index),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
