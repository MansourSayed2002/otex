import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/home/presentation/widget/offer_card_widget.dart';
import 'package:otex/features/home/presentation/widget/offers_header_widget.dart';
import 'package:otex/features/home/presentation/widget/sections_product_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.0.h),
        child: Column(
          children: [
            OffersHeaderWidget(),
            Gap(12.0.h),
            SectionsProductWidget(),
            Gap(33.0.h),
            OfferCardWidget(),
            Expanded(child: ProductsWidget()),
          ],
        ),
      ),
    );
  }
}

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Container(
        child: Column(
          children: [
            Container(
              
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ImageApp.shirt)),
              ),
            ),
            Row(
              children: [
                Text(
                  'jkewkjdkksakdjsajdklsakLA',
                  style: getBodyStyle(
                    context: context,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
