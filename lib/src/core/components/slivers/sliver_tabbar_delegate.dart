import 'package:news/src/core/core.dart';

class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  SliverTabBarDelegate({
    required this.tabBar,
    required this.color,
  });

  final TabBar tabBar;
  final Color color;

  @override
  double get maxExtent => 60;
  @override
  double get minExtent => 50;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: context.appTheme.scaffoldBackgroundColor,
      child: Column(
        children: [
          tabBar.px(15.0),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(SliverTabBarDelegate oldDelegate) => oldDelegate.tabBar.tabs.length != tabBar.tabs.length;
}
