import 'package:flutter/widgets.dart';

/// Importing the shared internal dependencies
import '../../shared/shared.dart';

/// Importing the internal widget dependencies
import 'button.widget.dart';

class VButtonBaseProps {
  /// Called when the button is pressed.
  ///
  /// @required
  final VoidCallback onPressed;

  /// Whether the button is enabled or not.
  ///
  /// @default: `true`
  final bool enabled;

  /// The kind of the button.
  ///
  /// @default: `VButtonKind.primary`
  ///
  /// See: * [VButtonKind]
  final VButtonKind kind;

  /// The size of the button.
  ///
  /// @default: `VButtonSize.regular`
  /// See: * [VButtonSize]
  final VButtonSize size;

  /// The theme of the button. (should generally be the theme of the view)
  ///
  /// @default: `VTheme.white`
  /// See * [VTheme]
  final VTheme theme;

  VButtonBaseProps(
      {required this.onPressed,
      required this.enabled,
      required this.kind,
      this.theme = VTheme.white,
      required this.size});
}

class VButtonRegularProps extends VButtonBaseProps {
  /// The text displayed inside the button.
  ///
  /// @required
  final String label;

  /// An optional icon to display inside the button.
  ///
  /// @optional
  final Widget? icon;

  /// Whether the button should fill the available width.
  ///
  /// @default: `false`
  final bool expand;

  /// The size (in logical pixels) to use when painting the label.
  ///
  /// @default: 14.0`
  final double labelSize;

  VButtonRegularProps(
      {required this.icon,
      required this.expand,
      required this.label,
      required this.labelSize,
      required super.theme,
      required super.enabled,
      required super.kind,
      required super.size,
      required super.onPressed});
}

class VButtonIconOnlyProps extends VButtonBaseProps {
  /// An icon to display in the button.
  ///
  /// @required
  final Widget icon;

  /// The text to display in the tooltip when the button is
  /// long pressed.
  ///
  /// @required
  final String iconDescription;

  /// The tooltip alignment, it can be `start, center, end`.
  ///
  /// @optional
  final VTooltipAlignment? tooltipAlignment;

  /// The tooltip position, it can be `top, right, bottom, left`.
  ///
  /// @optional
  final VTooltipPosition? tooltipPosition;

  VButtonIconOnlyProps(
      {required this.icon,
      required this.tooltipAlignment,
      required this.tooltipPosition,
      required this.iconDescription,
      required super.theme,
      required super.enabled,
      required super.kind,
      required super.size,
      required super.onPressed});
}
