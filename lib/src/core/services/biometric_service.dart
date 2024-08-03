import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';

class BiometricAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<bool> authenticate() async {
    bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
    bool isAuthenticated = false;

    if (canCheckBiometrics) {
      try {
        isAuthenticated = await _localAuth.authenticate(
          localizedReason: 'Please authenticate to access this feature',
        );
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    }

    return isAuthenticated;
  }

  Future<bool> hasBiometrics() async {
    try {
      return await _localAuth.canCheckBiometrics;
    } catch (e) {
      return false;
    }
  }
}
