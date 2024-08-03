import 'package:hive_flutter/hive_flutter.dart';

part 'session_entity.g.dart';

@HiveType(typeId: 0, adapterName: 'SessionAdapter')
class SessionEntity extends HiveObject {
  SessionEntity({
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
    this.hasOnboarding,
    this.pin,
    this.isPinSet,
    this.isBiometricsEnabled,
  });

  @HiveField(0)
  String? accessToken;

  @HiveField(1)
  String? refreshToken;

  @HiveField(2)
  int? expiresIn;

  @HiveField(3)
  bool? hasOnboarding;

  @HiveField(4)
  String? pin;

  @HiveField(5)
  bool? isPinSet;

  @HiveField(6)
  bool? isBiometricsEnabled;

  @HiveField(7)
  bool? showNotification;

  // define setters
  set setAccessToken(String? token) => accessToken = token;
  set setRefreshToken(String? token) => refreshToken = token;
  set setHasOnboarding(bool? onboarding) => hasOnboarding = onboarding;
  set setPin(String? pinCode) => pin = pinCode;
  set setIsPinSet(bool? pinSet) => isPinSet = pinSet;
  set setIsBiometricsEnabled(bool? biometricsEnabled) => isBiometricsEnabled = biometricsEnabled;
  set setShowNotification(bool? show) => showNotification = show;
}
