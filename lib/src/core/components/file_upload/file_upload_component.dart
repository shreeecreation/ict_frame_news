import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/src/core/extenstion/extension.dart';
import 'package:news/src/core/theme/theme.dart';


class FileWidget extends StatelessWidget {
  const FileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(
              color: AppColors.border,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
          ),
          width: context.width,
          child: Column(
            children: [
              10.verticalSpace,
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Click to upload',
                      style: AppTextStyles.text14PxSemiBold.black,
                    ),
                    TextSpan(
                      text: ' or drag and drop',
                      style: AppTextStyles.text14Px.textGrey,
                    ),
                  ],
                ),
              ),
              2.verticalSpace,
              Text(
                "SVG, PNG, JPG or GIF (max. 800x400px)",
                style: AppTextStyles.text14Px.textGrey,
              ),
            ],
          ).pxy(10.0, 30.0),
        ).pxy(0, 10.0),
      ],
    );
  }
}

class SelectedFileWidget extends StatelessWidget {
  const SelectedFileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          color: AppColors.border,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      width: context.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          15.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.width / 1.5,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Screeenshot 123456789.jpeg",
                        style: AppTextStyles.text14Px,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    10.horizontalSpace,
                  ],
                ),
              ),
              Text(
                "16 MB",
                style: AppTextStyles.text14Px,
              ),
              5.verticalSpace,
              SizedBox(
                width: context.width / 1.5,
                child: Row(
                  children: [
                    const Expanded(
                      child: SizedBox(
                        height: 10,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20.0,
                            ),
                          ),
                          value: 0.4,
                          backgroundColor: AppColors.greyColor,
                          color: Color(0xFF58A66C),
                        ),
                      ),
                    ),
                    10.horizontalSpace,
                    Text(
                      "40%",
                      style: AppTextStyles.text14Px,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ).pxy(5.0, 20.0),
    );
  }
}
