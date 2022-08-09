import 'package:flutter/widgets.dart';

/// Importing the widget components.
import 'form.props.dart';
import 'form.styles.dart';

/// Importing the required shared internal dependencies.
import '../../shared/shared.dart';

/// Importing the required internal widget dependencies.
import '../text_field/text_field.dart';
import '../enable/enable.dart';
import '../inherited_styles/inherited_styles.dart';

typedef _Styles = VFormStyles;

/// A form is a group of related input controls that allow
/// users to provide extra data or configure options.
class VForm extends StatefulWidget {
  VForm({
    Key? key,
    required List<Widget> children,
    bool enable = true,
    VTheme theme = VTheme.white,
    Widget? action,
  })  : props = VFormProps(
          enable: enable,
          children: children,
          theme: theme,
          action: action,
        ),
        super(key: key);

  final VFormProps props;

  @override
  VFormState createState() => VFormState();

  static VFormState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_InheritedVForm>()?.state;
  }
}

class VFormState extends State<VForm> {
  final Set<VTextFieldState> formFields = {};

  VWidgetState _state = VWidgetState.enabled;

  bool validate() {
    for (final field in formFields) {
      if (!field.validate()) {
        return false;
      }
    }
    return true;
  }

  bool get _isEnabled {
    return context.inheritedEnable ? widget.props.enable : false;
  }

  void _setStateVariables() {
    if (!_isEnabled) {
      _state = VWidgetState.disabled;
    } else {
      _state = VWidgetState.enabled;
    }
  }

  @override
  Widget build(BuildContext context) {
    _setStateVariables();

    return VInheritedStyles(
        styles: {},
        child: VEnable(
            value: _isEnabled,
            child: IgnorePointer(
                ignoring: !_isEnabled,
                child: _InheritedVForm(
                    state: this,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            color: _Styles
                                .backgroundColor[widget.props.theme]![_state],
                            padding: _Styles.padding[widget.props.theme]!,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: widget.props.children,
                            )),
                        if (widget.props.action != null) widget.props.action!,
                      ],
                    )))));
  }
}

class _InheritedVForm extends InheritedWidget {
  const _InheritedVForm({Key? key, this.state, required Widget child})
      : super(key: key, child: child);

  final VFormState? state;

  @override
  bool updateShouldNotify(oldWidget) => true;
}
