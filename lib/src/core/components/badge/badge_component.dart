import 'package:flutter/material.dart';
import 'package:news/src/core/extenstion/extension.dart';
import 'package:news/src/core/theme/theme.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({super.key, required this.title, this.color = AppColors.greyColor});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          child: Text(
            title,
            style: AppTextStyles.text10PxSemiBold.textTileGrey,
          ),
        )));
  }
}
