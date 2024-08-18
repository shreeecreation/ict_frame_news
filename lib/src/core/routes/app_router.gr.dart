// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:news/src/features/dashboard/presentation/view/category_page.dart'
    as _i1;
import 'package:news/src/features/dashboard/presentation/view/dashboard_page.dart'
    as _i3;
import 'package:news/src/features/dashboard/presentation/view/home_page.dart'
    as _i4;
import 'package:news/src/features/dashboard/presentation/view/inshorts_page.dart'
    as _i5;
import 'package:news/src/features/dashboard/presentation/view/news_detail_page.dart'
    as _i6;
import 'package:news/src/features/personalized/presentation/choose_personalized_page.dart'
    as _i2;
import 'package:news/src/features/splash/splash_page.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CategoryRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i1.CategoryPage(),
      );
    },
    ChoosePersonalizedRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i2.ChoosePersonalizedPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    InshortsRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i5.InshortsPage(),
      );
    },
    NewsDetailRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i6.NewsDetailPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<void>(
        routeData: routeData,
        child: const _i7.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoryPage]
class CategoryRoute extends _i8.PageRouteInfo<void> {
  const CategoryRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChoosePersonalizedPage]
class ChoosePersonalizedRoute extends _i8.PageRouteInfo<void> {
  const ChoosePersonalizedRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ChoosePersonalizedRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChoosePersonalizedRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.InshortsPage]
class InshortsRoute extends _i8.PageRouteInfo<void> {
  const InshortsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          InshortsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InshortsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewsDetailPage]
class NewsDetailRoute extends _i8.PageRouteInfo<void> {
  const NewsDetailRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NewsDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsDetailRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
