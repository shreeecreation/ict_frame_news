import 'package:news/src/core/core.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      // child: Assets.svg.back.svg(
      //   colorFilter: ColorFilter.mode(
      //     context.appTheme.appBarTheme.iconTheme?.color ?? AppColors.white,
      //     BlendMode.srcIn,
      //   ),
      // ),
    );
  }
}
