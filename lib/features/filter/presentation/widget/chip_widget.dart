import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';

class CustomTypeWidget extends StatefulWidget {
  const CustomTypeWidget({super.key, required this.listwidget});
  final List listwidget;
  @override
  State<CustomTypeWidget> createState() => _CustomTypeHouseWidgetState();
}

class _CustomTypeHouseWidgetState extends State<CustomTypeWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        widget.listwidget.length,
        (index) => ChipWidget(
          type: widget.listwidget[index].type.toString(),
          index: index,
          currentIndex: currentIndex,
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.type,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });
  final String type;
  final int index;
  final int currentIndex;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final bool isSelected = currentIndex == index;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.0.h),
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorApp.blue.withAlpha(30) : ColorApp.white,
          borderRadius: BorderRadius.circular(30.0.r),
          border: Border.all(
            color:
                isSelected
                    ? ColorApp.blue.withAlpha(80)
                    : ColorApp.charcoal.withAlpha(20),
          ),
        ),
        child: Text(
          type.toString(),
          style: getSmallStyle(
            fontSize: 14.0.sp,
            color: isSelected ? ColorApp.blue : null,
          ),
        ),
      ),
    );
  }
}
