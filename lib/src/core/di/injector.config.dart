// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i833;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:news/src/core/core.dart' as _i1004;
import 'package:news/src/core/di/register_modules.dart' as _i799;
import 'package:news/src/core/helpers/device_info_helpers.dart' as _i697;
import 'package:news/src/core/helpers/helpers.dart' as _i296;
import 'package:news/src/core/interceptor/auth_interceptor.dart' as _i753;
import 'package:news/src/core/interceptor/device_interceptor.dart' as _i955;
import 'package:news/src/core/interceptor/interceptor.dart' as _i380;
import 'package:news/src/core/network/network_info.dart' as _i823;
import 'package:news/src/core/session/session_service.dart' as _i198;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModules = _$RegisterModules();
    gh.singleton<_i1004.AppRouter>(() => registerModules.router);
    gh.lazySingleton<_i833.DeviceInfoPlugin>(
        () => registerModules.deviceInfoPlugin);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => registerModules.connectionChecker);
    gh.lazySingleton<_i198.SessionService>(() => _i198.SessionService());
    gh.lazySingleton<_i697.DeviceInfoHelper>(
        () => _i697.DeviceInfoHelper(gh<_i833.DeviceInfoPlugin>()));
    gh.lazySingleton<_i823.NetworkInfo>(
        () => _i823.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()));
    gh.lazySingleton<_i955.DeviceInterceptor>(
        () => _i955.DeviceInterceptor(gh<_i296.DeviceInfoHelper>()));
    gh.lazySingleton<_i753.AuthInterceptor>(
        () => _i753.AuthInterceptor(gh<_i1004.SessionService>()));
    gh.lazySingleton<_i361.Dio>(() => registerModules.dio(
          gh<_i380.DeviceInterceptor>(),
          gh<_i380.AuthInterceptor>(),
        ));
    return this;
  }
}

class _$RegisterModules extends _i799.RegisterModules {}
