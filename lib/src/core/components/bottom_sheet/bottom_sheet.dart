import 'package:flutter/material.dart';
import 'package:news/src/core/theme/theme.dart';

Future<T?> showAppBottomSheet<T>(
  BuildContext context,
  Widget child, {
  AnimationController? animation,
  TickerProvider? vsync,
  bool enableScroll = false,
  bool enableDrag = true,
  void Function()? onComplete,
  bool isDismissible = true,
}) async {
  return await showModalBottomSheet<T?>(
    context: context,
    builder: (context) => child,
    showDragHandle: true,
    isScrollControlled: enableScroll,
    useRootNavigator: true,
    isDismissible: isDismissible,
    backgroundColor: AppColors.white,
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  ).whenComplete(() {
    onComplete?.call();
  });
}
