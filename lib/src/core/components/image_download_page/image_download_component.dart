import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/src/core/components/components.dart';
import 'package:news/src/core/enum/enum.dart';
import 'package:news/src/core/extenstion/extension.dart';
import 'package:news/src/core/theme/app_colors.dart';

class ImageDownloadComponent extends StatelessWidget {
  const ImageDownloadComponent({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.black,
        actions: [
          // Assets.svg.dowload.svg(
          //   colorFilter: const ColorFilter.mode(
          //     AppColors.white,
          //     BlendMode.srcIn,
          //   ),
          // ),
          20.horizontalSpace,
        ],
      ),
      body: Container(
        height: context.height,
        color: AppColors.black,
        child: SizedBox(
          height: 200,
          child: AppCacheImageViewer(
            imageUrl: image,
            imageTypeEnum: ImageTypeEnum.assets,
          ),
        ),
      ),
    );
  }
}
