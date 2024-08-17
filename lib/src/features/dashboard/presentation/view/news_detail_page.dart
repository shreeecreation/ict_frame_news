import 'package:news/src/core/core.dart';
import 'package:news/src/features/dashboard/presentation/view/home_page.dart';

@RoutePage<void>()
class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: AppBar(
        title: const Text("News Title"),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: SizedBox(
                  height: 250,
                  child: AppCacheImageViewer(
                    imageUrl: 'https://s.abcnews.com/images/International/main-stabbing_1722260676096_hpMain_16x9_992.jpg',
                    imageTypeEnum: ImageTypeEnum.network,
                  ),
                ),
              ),
              15.verticalSpace,
              Text(
                "By : NK Magazine",
                style: AppTextStyles.text13PxSemiBold.primary,
              ),
              10.verticalSpace,
              Text(
                "News Title goes here",
                style: AppTextStyles.text16PxMedium,
              ),
              5.verticalSpace,
              Text(
                "Here comes the subtitle of the news",
                style: AppTextStyles.text12Px.textGrey,
              ),
              15.verticalSpace,
              Text(
                "Here comes the subtitle of the news",
                style: AppTextStyles.text12Px.textGrey,
              ),
              Text(
                "Here comes the description of the news of the news ( Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ),Here comes the description of the news of the news ( Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. )",
                style: AppTextStyles.text14Px,
              ),
              20.verticalSpace,
              const Divider(),
              20.verticalSpace,
              Text("Comments", style: AppTextStyles.text16PxSemiBold),
              10.verticalSpace,
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      child: Text("A"),
                    ),
                    title: Text("User Name"),
                    subtitle: Text("Comment goes here"),
                  );
                },
              ),
              10.verticalSpace,
              Text(
                "Related News",
                style: AppTextStyles.text16PxSemiBold,
              ),
              10.verticalSpace,
              const NewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
