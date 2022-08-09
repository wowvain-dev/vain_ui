import 'package:flutter/widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';

/// Importing the components of the widget.
import 'checkbox.props.dart';
import 'checkbox.styles.dart';

/// Importing the required shared internal dependencies.
import '../../shared/shared.dart';

/// Importing the required internal widgets dependencies.
import '../enable/enable.dart';
import '../text/text.dart';

typedef _Styles = VCheckboxStyles;

/// and properly color disabled border in case the checkbox is checked
/// (THE SHADE SHOULD BE SLIGHTLY DARKER ON THE BORDER)

enum VCheckboxValue { unchecked, indeterminate, checked }

/// Checkboxes are used when there are multiple items to select
/// in a list. Users can select none, one, or multiple items.
class VCheckbox extends StatefulWidget {
  VCheckbox({
    Key? key,
    required void Function(VCheckboxValue value) onChange,
    bool enable = true,
    bool indeterminateState = false,
    VTheme theme = VTheme.white,
    VCheckboxValue value = VCheckboxValue.unchecked,
    String? label,
  }) : props = VCheckboxProps(
    enable: enable,
    value: value,
    indeterminateState: indeterminateState,
    label: label,
    onChange: onChange,
    theme: theme,
  ), super(key: key);

  final VCheckboxProps props;

  @override
  VCheckboxState createState() => VCheckboxState();
}

class VCheckboxState extends State<VCheckbox> {
  VWidgetState _state = VWidgetState.enabled;

  VCheckboxValue _value = VCheckboxValue.unchecked;
  bool _focused = false;

  @override
  void initState() {
    _value = widget.props.value;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _value = widget.props.value;
    super.didChangeDependencies();
  }

  bool get _isEnabled {
    return context.inheritedEnable ? widget.props.enable : false;
  }

  void _setStateVariables() {
    if (!_isEnabled) {
      _state = VWidgetState.disabled;
    } else if (_isEnabled && _focused) {
      _state = VWidgetState.focused;
    } else {
      _state = VWidgetState.enabled;
    }

    if (!widget.props.indeterminateState &&
        _value == VCheckboxValue.indeterminate) {
      _value = VCheckboxValue.checked;
    }
  }

  @override
  Widget build(BuildContext context) {
    _setStateVariables();

    return IgnorePointer(
      ignoring: !_isEnabled,
      child: GestureDetector(
        onTapDown: (_) => setState(() => _focused = true),
        onTapUp: (_) => setState(() {
          _focused = false;
          if (!widget.props.indeterminateState) {
            _value = _value == VCheckboxValue.unchecked
                ? VCheckboxValue.checked : VCheckboxValue.unchecked;
          } else {
            _value == VCheckboxValue.unchecked
                ? _value = VCheckboxValue.indeterminate
                : (
              _value == VCheckboxValue.indeterminate
                ? _value = VCheckboxValue.checked
                : _value = VCheckboxValue.unchecked
            );
          }
          widget.props.onChange(_value);
          // _value = !_value;
          // widget.props.onChange(_value);
        }),
        onTapCancel: () => setState(() => _focused = false),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                AnimatedContainer(
                  height: 20,
                  width: 20,
                  duration: _Styles.borderAnimation[widget.props.theme]!
                  ['duration'],
                  curve: _Styles.borderAnimation[widget.props.theme]!
                  ['curve'],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: _Styles.borderColor[widget.props.theme]!
                             [_state]!,
                      width: _focused ? 2 : 1,
                    )
                  )
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: _value == VCheckboxValue.indeterminate ||
                           _value == VCheckboxValue.checked
                              ? _Styles.backgroundColor[widget.props.theme]!
                                [_state]!
                              : VColors.transparent
                  )
                ),
                AnimatedContainer(
                  height: 20,
                  width: 20,
                  alignment: Alignment.center,
                  duration: _Styles.backgroundAnimation[widget.props.theme]!
                            ['duration'],
                  curve: _Styles.backgroundAnimation[widget.props.theme]!
                         ['curve'],
                  child: SvgPicture.asset(
                    _value == VCheckboxValue.checked
                        ? 'assets/svg/checkmark.svg'
                        : 'assets/svg/line.svg'
                    ,
                    color: _value != VCheckboxValue.unchecked
                        ? _Styles.checkmarkColor[widget.props.theme]![_state]!
                        : VColors.transparent,
                    height: 8,
                  )
                )
              ],
            ),
            if (widget.props.label != null) ...[
              const SizedBox(width: 10),
              VText(
                widget.props.label!,
                style: TextStyle(fontSize: 14,
                    color: _Styles.labelColor[widget.props.theme]!
                           [_state]
                )
              )
            ]
          ],
        )
      )
    );
  }
}