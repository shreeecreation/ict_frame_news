import 'package:news/src/core/core.dart';
import 'package:provider/provider.dart';

import 'core/extenstion/theme_provider.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager.instance),
      ],
      child: ScreenUtilInit(builder: (context, _) {
        return MaterialApp.router(
          restorationScopeId: 'root',
          debugShowCheckedModeBanner: false,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(
            navigatorObservers: () => [],
            deepLinkBuilder: (deepLink) {
              return deepLink;
            },
          ),
          localizationsDelegates: const [],
          theme: context.appTheme,
          builder: (BuildContext context, Widget? child) {
            // ErrorWidget.builder = (FlutterErrorDetails details) =>
            //     AppErrorWidget(details: details);
            return child!;
          },
        );
      }),
    );
  }
}
