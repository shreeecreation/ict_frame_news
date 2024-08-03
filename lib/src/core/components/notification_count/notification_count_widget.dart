import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/src/core/extenstion/extension.dart';
import 'package:news/src/core/theme/theme.dart';

class NotificationCountWidget extends StatelessWidget {
  const NotificationCountWidget({
    super.key,
    required this.count,
    required this.title,
  });

  final String count;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        5.horizontalSpace,
        count == "0"
            ? const SizedBox.shrink()
            : Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.statusRed,
                ),
                height: 25,
                width: 25,
                child: Center(
                  child: Text(
                    count,
                    style: AppTextStyles.text12Px.white,
                  ),
                ),
              ),
      ],
    );
  }
}
