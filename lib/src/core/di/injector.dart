import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  // await $initGetIt(getIt, environment: Environment.prod);
  getIt.init();
}
