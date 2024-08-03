import 'package:auto_route/auto_route.dart';
import 'app_routes.dart';
export 'app_routes.dart';
export 'app_router.gr.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: SplashRoute.page,
      path: AppRoutes.splashPage,
      initial: true,
    ),
    AutoRoute(page: DashboardRoute.page, path: AppRoutes.dashboardPage, children: [
      AutoRoute(
        page: HomeRoute.page,
        path: AppRoutes.homePage,
      ),
      AutoRoute(
        page: InshortsRoute.page,
        path: "notice-home",
      ),
    ]),
  ];
}
