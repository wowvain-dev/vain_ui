part of 'button.widget.dart';

typedef _Styles = VButtonStyles;

mixin _VButtonStateBase<T extends _VButtonBase> on State<T> {
  late VButtonKind kind;
  late Size dimensions;
  late VTheme theme;

  VWidgetState state = VWidgetState.enabled;

  bool focused = false;

  bool get isEnabled {
    return context.inheritedEnable ? widget.props.enabled : false;
  }

  void _setStateVariables() {
    if (!isEnabled) {
      state = VWidgetState.disabled;
    } else if (isEnabled && focused) {
      state = VWidgetState.focused;
    } else {
      state = VWidgetState.enabled;
    }

    theme = widget.props.theme;
    kind = widget.props.kind;
    dimensions = _Styles.dimensions[widget.props.theme]!
    [kind]![widget.props.size]!;
  }
}
