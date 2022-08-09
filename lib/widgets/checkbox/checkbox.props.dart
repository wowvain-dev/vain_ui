/// Importing the components of the widget.
import 'checkbox.widget.dart';

/// Importing the shared internal dependencies
import '../../shared/shared.dart';

class VCheckboxProps {
  /// Called when the value of the checkbox changes.
  ///
  /// This callback passes a new value, but doesn't update its state
  /// internally.
  ///
  /// @required
  final void Function(VCheckboxValue value) onChange;

  /// Whether the checkbox is enabled or not.
  ///
  /// @default: `true`
  final bool enable;

  /// Whether the checkbox is checked, indeterminate or unchecked.
  ///
  /// @default: `unchecked
  final VCheckboxValue value;

  /// Whether the checkbox has an indeterminate state available or not.
  ///
  /// @default: `false`
  final bool indeterminateState;

  /// The theme of the widget.
  ///
  /// @default: `white`
  final VTheme theme;

  /// A text to display besides the checkbox.
  ///
  /// @optional
  final String? label;

  VCheckboxProps({
    required this.enable,
    required this.value,
    required this.indeterminateState,
    required this.label,
    required this.theme,
    required this.onChange,
  });
}
