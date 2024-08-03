import 'package:flutter/services.dart';
import 'package:news/src/core/core.dart';
import 'package:news/src/core/routes/app_router.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Widget dashboardTabs(bool selected, fillIcon, unFillIcon) {
    return selected ? fillIcon : unFillIcon;
  }

  List<NavigationDestination> get items {
    final tabsRouter = getIt<AppRouter>().root.innerRouterOf<TabsRouter>(DashboardRoute.name);
    return [
      NavigationDestination(
          label: 'Home',
          icon: dashboardTabs(
              tabsRouter?.activeIndex == 0,
              SizedBox(height: 25, child: AppCacheImageViewer(imageUrl: Assets.images.flutterLogo.path, imageTypeEnum: ImageTypeEnum.assets)),
              SizedBox(height: 25, child: AppCacheImageViewer(imageUrl: Assets.images.flutterLogo.path, imageTypeEnum: ImageTypeEnum.assets)))),
      NavigationDestination(
          label: 'Inshorts',
          icon: dashboardTabs(
              tabsRouter?.activeIndex == 1,
              SizedBox(height: 25, child: AppCacheImageViewer(imageUrl: Assets.images.flutterLogo.path, imageTypeEnum: ImageTypeEnum.assets)),
              SizedBox(height: 25, child: AppCacheImageViewer(imageUrl: Assets.images.flutterLogo.path, imageTypeEnum: ImageTypeEnum.assets)))),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        InshortsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return DefaultTextStyle.merge(
          style: AppTextStyles.text14PxMedium.primary,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
              child: NavigationBar(
                backgroundColor: AppColors.white,
                surfaceTintColor: AppColors.white,
                height: 70,
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: (index) async {
                  tabsRouter.setActiveIndex(index);
                  HapticFeedback.lightImpact();
                },
                indicatorColor: AppColors.transparent,
                animationDuration: 2.seconds,
                destinations: items,
              ),
            ),
          ),
        );
      },
    );
  }
}
