import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/src/core/extenstion/extension.dart';
import 'package:news/src/core/theme/theme.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({
    super.key,
    required this.title,
    required this.message,
    this.error = false,
  });

  final String title;
  final String message;
  final bool error;

  Color get bgColor => error ? AppColors.statusRed : AppColors.primaryColor;
  Color get bgFrontColor => error ? Colors.red : const Color.fromARGB(255, 181, 135, 55);

  Color get textColor => AppColors.white;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 15.w,
            decoration: BoxDecoration(
              color: bgFrontColor,
              borderRadius: BorderRadius.horizontal(left: 10.circular),
            ),
          ),
          Expanded(
            child: ColoredBox(
              color: bgColor,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   title,
                    //   maxLines: 1,
                    //   overflow: TextOverflow.ellipsis,
                    //   style: AppTextStyles.text14PxMedium.copyWith(color: textColor),
                    // ),
                    // 10.verticalSpace,
                    Text(
                      message,
                      style: AppTextStyles.text14PxMedium.copyWith(color: textColor),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
