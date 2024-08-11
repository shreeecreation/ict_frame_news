import 'package:news/src/core/core.dart';

@RoutePage<void>()
class ChoosePersonalizedPage extends StatelessWidget {
  const ChoosePersonalizedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      backgroundColor: AppColors.scaffoldBackground,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomButton(
          label: "Continue",
          onPressed: () {
            context.replaceRoute(const DashboardRoute());
          },
          isDisabled: false,
        ),
      ),
      body: SizedBox(
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            80.verticalSpace,
            AppCacheImageViewer(
              imageUrl: Assets.images.logo.path,
              imageTypeEnum: ImageTypeEnum.assets,
            ),
            Text(
              "Personalize your feed ",
              style: AppTextStyles.text22PxSemiBold.primary,
            ),
            30.verticalSpace,
            ValueListenableBadgeComponent(
              length: 9,
              status: const [
                "Top stories",
                "Finance",
                "Sports",
                "Asia",
                "North America",
                "Middle East",
                "Life",
                "Business",
                "Random",
              ],
              badgeColor: AppColors.primaryColor,
              badgeDisabledColor: AppColors.cardColor,
              onSelected: (values) {},
            ),
          ],
        ),
      ),
    );
  }
}
