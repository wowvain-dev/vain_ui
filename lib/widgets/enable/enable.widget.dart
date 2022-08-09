import 'package:flutter/widgets.dart';

import 'enable.extension.dart';

/// A widget used to enable/disable a group of widgets.
class VEnable extends StatelessWidget {
  const VEnable({
    Key? key,
    this.value = true,
    this.inheritFromParent = true,
    required this.child,
  }) : super(key: key);

  /// Whether to enable/disable widgets below this widget.
  final bool value;

  /// Whether the current widget should inehrit the enable value.
  /// or only use the local [value].
  final bool inheritFromParent;

  /// The widget below this in the widget tree.
  final Widget child;

  static bool? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_InheritedVEnable>()
        ?.value;
  }

  bool _isEnabled(BuildContext context) {
    if (inheritFromParent) {
      return context.inheritedEnable ? value : false;
    }

    return value;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedVEnable(value: _isEnabled(context), child: child);
  }
}

class _InheritedVEnable extends InheritedWidget {
  const _InheritedVEnable({
    Key? key,
    required this.value,
    required Widget child,
  }) : super(key: key, child: child);

  final bool value;

  @override
  bool updateShouldNotify(_InheritedVEnable old) => value != old.value;
}
