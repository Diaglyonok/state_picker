import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AdaptiveBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool isDismissible = true,
    bool enableDrag = true,
    double? height,
  }) {
    if (Platform.isIOS) {
      return showCupertinoModalBottomSheet<T>(
        context: context,
        builder: builder,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        topRadius: const Radius.circular(20),
      );
    } else {
      return showMaterialModalBottomSheet<T>(
        context: context,
        builder: builder,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      );
    }
  }

  static Future<T?> showScrollable<T>({
    required BuildContext context,
    required Widget Function(BuildContext, ScrollController?) builder,
    bool isDismissible = true,
    bool enableDrag = true,
    double? height,
  }) {
    if (Platform.isIOS) {
      return showCupertinoModalBottomSheet<T>(
        context: context,
        builder: (context) => builder(context, null),
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        topRadius: const Radius.circular(20),
      );
    } else {
      return showMaterialModalBottomSheet<T>(
        context: context,
        builder: (context) => builder(context, null),
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      );
    }
  }
}
