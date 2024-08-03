import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import 'src/app.dart';
import 'src/bootstrap.dart';

Future<void> main() async {
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
  }
  await bootstrap(() => App());
}
