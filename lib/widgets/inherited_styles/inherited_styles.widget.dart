import 'package:flutter/widgets.dart';

/// Importing the required widget components.
import 'inherited_styles.extension.dart';

typedef StylesMap = Map<String, dynamic>;

class VInheritedStyles extends StatelessWidget {
  const VInheritedStyles({
    Key? key,
    required this.styles,
    required this.child,
    this.inheritFromParent = true,
  }) : super(key: key);

  final Widget child;

  final StylesMap styles;

  /// Whether the current widget should inherit the styles
  /// of the parent or only use its own local [value].
  final bool inheritFromParent;

  static StylesMap? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_VInheritedStylesWidget>()
        ?.value;
  }

  StylesMap _styles(BuildContext context) {
    if (inheritFromParent) {
      final parentStyles = context.styles;
      final StylesMap stylesClone = {};

      stylesClone.addAll(styles);
      stylesClone.addAll(parentStyles);

      return stylesClone;
    }

    return styles;
  }

  @override
  Widget build(BuildContext context) {
    return _VInheritedStylesWidget(
      value: _styles(context),
      child: child,
    );
  }
}

class _VInheritedStylesWidget extends InheritedWidget {
  const _VInheritedStylesWidget({
    Key? key,
    required this.value,
    required Widget child,
  }) : super(key: key, child: child);

  final StylesMap value;

  @override
  bool updateShouldNotify(_VInheritedStylesWidget old) => value != old.value;
}
