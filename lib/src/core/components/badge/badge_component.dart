import 'package:flutter/material.dart';
import 'package:news/src/core/theme/theme.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({
    super.key,
    required this.title,
    this.color = AppColors.greyColor,
    this.textColor = AppColors.black,
    this.borderColor = AppColors.transparent,
  });
  final String title;
  final Color color;
  final Color textColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(25.0),
          ),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 8.0,
          ),
          child: Text(
            title,
            style: AppTextStyles.text11PxSemiBold.copyWith(color: textColor),
          ),
        )));
  }
}
