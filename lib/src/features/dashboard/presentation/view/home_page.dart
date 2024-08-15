import 'package:news/src/core/core.dart';

@RoutePage<void>()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 90,
            centerTitle: true,
            title: SizedBox(height: 90, child: AppCacheImageViewer(imageUrl: Assets.images.logo.path, imageTypeEnum: ImageTypeEnum.assets)),
          ),
          SliverToBoxAdapter(
              child: CustomTextField(
            hintText: "Search news topic here...",
            prefixIcon: Icon(
              Icons.search,
            ),
            hintStyle: AppTextStyles.text12Px.textGrey.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ).px(10.0)),
          10.verticalSpace.toSliverBox,
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ValueListenableBadgeComponent<String>(
                length: 4,
                status: const ["All", "Finance", "Sports", "Economic"],
                badgeColor: AppColors.primaryColor,
                badgeDisabledColor: AppColors.white,
                borderColor: AppColors.border,
                onSelected: (index) {},
              ),
            ).px(10.0),
          ),
          10.verticalSpace.toSliverBox,
          const SliverToBoxAdapter(
            child: NewsCard(),
          ),
          const SliverToBoxAdapter(
            child: NewsCard(),
          )
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(const NewsDetailRoute());
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          elevation: 0,
          color: AppColors.cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    child: SizedBox(
                      height: 200,
                      child: AppCacheImageViewer(
                        imageUrl: 'https://s.abcnews.com/images/International/main-stabbing_1722260676096_hpMain_16x9_992.jpg',
                        imageTypeEnum: ImageTypeEnum.network,
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    truncateText(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      100,
                    ),
                    style: AppTextStyles.text13PxMedium,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "By : NK Magazine",
                        style: AppTextStyles.text13PxSemiBold.primary,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greyColor,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String truncateText(String text, int maxLength) {
  if (text.length > maxLength) {
    return '${text.substring(0, maxLength)}...';
  } else {
    return text;
  }
}
