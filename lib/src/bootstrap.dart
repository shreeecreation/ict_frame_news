import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news/src/core/core.dart';
import 'core/helpers/loggers/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onChange(BlocBase<dynamic> bloc, Change<dynamic> change) async {
    super.onChange(bloc, change);
    logger.fine('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.fine('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initDependencies();

  Bloc.observer = AppBlocObserver();
  runApp(await builder());
}

Future<void> _initDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SessionAdapter());
  await Hive.openBox<SessionEntity>(
    StorageKeys.sessionBox,
  );
  await Hive.openBox<Map<String, dynamic>>(StorageKeys.cacheBox);
  await configureInjection();
}
