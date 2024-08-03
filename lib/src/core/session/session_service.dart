import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news/src/core/core.dart';

@lazySingleton
class SessionService {
  final Box<SessionEntity> _box = Hive.box<SessionEntity>(StorageKeys.sessionBox);

  Future<bool> get hasOnboarding async {
    final obj = _box.get(StorageKeys.hasOnboarding);
    return _box.isNotEmpty && (obj != null && obj.hasOnboarding == true);
  }

  Future<void> saveOnboarding() async {
    await _box.put(
      StorageKeys.hasOnboarding,
      SessionEntity()..setHasOnboarding = true,
    );
  }

  Future<void> saveIsPinSet(bool isSet) async {
    final sessionEntity = _box.get(StorageKeys.isPinSet) ?? SessionEntity();
    sessionEntity.setIsPinSet = isSet;
    await _box.put(StorageKeys.isPinSet, sessionEntity);
  }

  Future<bool> get isPinSets async {
    final sessionEntity = _box.get(StorageKeys.isPinSet);
    return _box.isNotEmpty && (sessionEntity != null && sessionEntity.isPinSet == true);
  }

  Future<void> saveIsBiometricsEnabled(bool isEnabled) async {
    final sessionEntity = _box.get(StorageKeys.isBiometricsEnabled) ?? SessionEntity();
    sessionEntity.setIsBiometricsEnabled = isEnabled;
    await _box.put(StorageKeys.isBiometricsEnabled, sessionEntity);
  }

  Future<bool> get isBiometricsEnabled async {
    final sessionEntity = _box.get(StorageKeys.isBiometricsEnabled);
    return sessionEntity != null && sessionEntity.isBiometricsEnabled == true;
  }

  Future<void> saveSession(SessionEntity entity) async {
    _box
      ..clear()
      ..add(entity);
  }

  Future<void> saveToken(String token) async {
    await _box.put(
      StorageKeys.token,
      SessionEntity()..setAccessToken = token,
    );
  }

  Future<void> removeToken() async {
    await _box.clear();
  }

  Future<String?> get token async {
    final obj = _box.get(StorageKeys.token);
    return obj != null ? obj.accessToken : '';
  }

  Future<bool> get hasSession async {
    final obj = _box.get(StorageKeys.token);
    return _box.isNotEmpty && (obj != null && obj.accessToken!.isNotEmpty);
  }

  Future<void> savePin(String pin) async {
    await _box.put(
      StorageKeys.pin,
      SessionEntity()..setPin = pin,
    );
  }

  Future<bool> checkPin(String pin) async {
    final session = _box.get(StorageKeys.pin);
    if (session != null && session.pin == pin) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> get hasPin async {
    final obj = _box.get(StorageKeys.pin);
    return _box.isNotEmpty && (obj != null && obj.pin != null);
  }

  Future<void> removePin() async {
    await _box.delete(StorageKeys.isPinSet);
  }

  // Save notification state
  Future<void> saveNotificationState(bool show) async {
    final sessionEntity = _box.get(StorageKeys.showNotification) ?? SessionEntity();
    sessionEntity.setShowNotification = show;
    await _box.put(StorageKeys.showNotification, sessionEntity);
  }

  // Get notification state
  Future<bool> get notificationValue async {
    final sessionEntity = _box.get(StorageKeys.showNotification);
    return sessionEntity != null && sessionEntity.showNotification == true;
  }
}
