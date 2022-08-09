import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

/// Importing the required widget components.
import 'toggle.props.dart';
import 'toggle.styles.dart';

/// Importing the required internal shared dependencies.
import '../../shared/shared.dart';

/// Importing the required internal widget dependencies.
import '../enable/enable.dart';
import '../text/text.dart';
import '../outline/outline.dart';

enum VToggleSize { sm, md }

enum VToggleCheckStatus { checked, unchecked }

typedef _Styles = VToggleStyles;

/// Toggles are commonly used to quickly switch between the two states
/// of a property.
///
/// They are usually used for "on/off" switches.
class VToggle extends StatefulWidget {
  VToggle({
    Key? key,
    required void Function(bool value) onToggle,
    bool enable = true,
    bool value = true,
    bool showStatusLabel = true,
    VTheme theme = VTheme.white,
    String? labelText,
    VToggleSize size = VToggleSize.md,
  })  : props = VToggleProps(
          onToggle: onToggle,
          enable: enable,
          value: value,
          labelText: labelText,
          size: size,
          theme: theme,
          showStatusLabel: showStatusLabel,
        ),
        super(key: key);

  final VToggleProps props;

  @override
  VToggleState createState() => VToggleState();
}

class VToggleState extends State<VToggle> {
  bool _outlined = false;
  bool _value = false;

  late Size _dimensions;
  VWidgetState _state = VWidgetState.enabled;
  VToggleCheckStatus _checkStatus = VToggleCheckStatus.unchecked;

  @override
  void initState() {
    _value = widget.props.value;

    super.initState();
  }

  @override
  void didChangeDependencies() {
    _value = widget.props.value;
    _dimensions = _Styles.dimensions[widget.props.theme]![widget.props.size]!;

    super.didChangeDependencies();
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

    _checkStatus =
        _value ? VToggleCheckStatus.checked : VToggleCheckStatus.unchecked;
  }

  @override
  Widget build(BuildContext context) {
    _setStateVariables();

    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (widget.props.labelText != null) ...[
            VText(widget.props.labelText!,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: VFonts.primary,
                  color: _Styles.labelColor[widget.props.theme]![_state],
                )),
            const SizedBox(height: 16),
          ],
          Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IgnorePointer(
                    ignoring: !_isEnabled,
                    child: GestureDetector(
                        onTapUp: (_) => setState(() {
                              _value = !_value;
                              _outlined = !_outlined;

                              Future.delayed(
                                const Duration(milliseconds: 750),
                                () => setState(() => _outlined = !_outlined),
                              );

                              widget.props.onToggle(_value);
                            }),
                        child: VOutline(
                            color: _Styles.outlineColor[widget.props.theme]!,
                            animationDuration: 400,
                            borderRadius: BorderRadius.circular(1000),
                            outlineWidth: 2,
                            outlined: _outlined,
                            child: AnimatedContainer(
                                width: _dimensions.width,
                                height: _dimensions.height,
                                alignment: _value
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                padding: const EdgeInsets.all(3),
                                duration: _Styles
                                    .animation[widget.props.theme]!['duration'],
                                curve: _Styles
                                    .animation[widget.props.theme]!['curve'],
                                decoration: BoxDecoration(
                                  color: _Styles.fillColor[widget.props.theme]![
                                      _state]![_checkStatus],
                                  borderRadius: BorderRadius.circular(1000),
                                ),
                                child: AnimatedContainer(
                                  height: _dimensions.height - 6,
                                  width: _dimensions.height - 6,
                                  alignment: Alignment.center,
                                  duration: _Styles.animation[
                                      widget.props.theme]!['duration'],
                                  curve: _Styles
                                      .animation[widget.props.theme]!['curve'],
                                  decoration: BoxDecoration(
                                    color: _Styles.indicatorColor[
                                        widget.props.theme]![_state],
                                    borderRadius: BorderRadius.circular(1000),
                                  ),
                                  child: widget.props.size == VToggleSize.sm
                                      ? SvgPicture.asset(
                                          'assets/svg/toggle-checkmark.svg',
                                          color: _Styles.checkmarkColor[widget
                                              .props
                                              .theme]![_state]![_checkStatus],
                                          width: 6,
                                        )
                                      : null,
                                ))))),
                if (widget.props.showStatusLabel) ...[
                  const SizedBox(width: 8),
                  VText(_value ? 'On' : 'Off',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: VFonts.primary,
                        color: _Styles.labelColor[widget.props.theme]![_state],
                      ))
                ]
              ])
        ]);
  }
}
