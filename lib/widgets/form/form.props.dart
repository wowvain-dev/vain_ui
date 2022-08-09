import 'package:flutter/widgets.dart';

/// Importing the required internal shared dependencies.
import '../../shared/shared.dart';

import 'form.widget.dart';

class VFormProps {
  /// The content of the form.
  ///
  /// @required
  final List<Widget> children;

  /// Whether the form is enabled or not.
  ///
  /// @default: `true`
  final bool enable;

  /// An action widget to display at the end of the form.
  ///
  /// @optional
  final Widget? action;

  /// The theme of the form.
  ///
  /// @optional
  VTheme theme;

  VFormProps({
    required this.enable,
    required this.children,
    required this.action,
    this.theme = VTheme.white,
  });
}
