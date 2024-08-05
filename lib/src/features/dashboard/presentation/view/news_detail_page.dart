import 'package:news/src/core/core.dart';

@RoutePage<void>()
class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: AppBar(
        title: Text(" Title here"),
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
                  height: 300,
                  child: AppCacheImageViewer(
                    imageUrl: 'https://s.abcnews.com/images/International/main-stabbing_1722260676096_hpMain_16x9_992.jpg',
                    imageTypeEnum: ImageTypeEnum.network,
                  ),
                ),
              ),
              20.verticalSpace,
              Text(
                "Source : NK Magazine",
                style: AppTextStyles.text13PxSemiBold.primary,
              ),
              10.verticalSpace,
              Text("News Title goes here"),
              10.verticalSpace,
              Text("Here comes the description of the news")
            ],
          ),
        ),
      ),
    );
  }
}
