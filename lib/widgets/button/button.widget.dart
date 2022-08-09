import 'package:flutter/material.dart';

/// Importing the components of the widget.
import 'button.props.dart';
import 'button.styles.dart';

/// Importing the shared internal dependencies
import '../../shared/shared.dart';

/// Importing the internal widget dependencies
import '../inherited_styles/inherited_styles.dart';
import '../enable/enable.dart';
import '../text/text.dart';

part 'button.mixin.dart';

enum VButtonKind { primary, secondary, danger, tertiary, ghost }

enum VButtonSize { regular, sm, md }

enum VButtonType { regular, icon }

/// Buttons are clickable widgets that are used to trigger application logic.
/// They make calls to actions for the users and allow users to interact
/// with pages. Button labels are used to briefly inform the user of what
/// action the button will execute.
class VButton extends StatefulWidget {
  VButton({
    Key? key,
    required String label,
    required VoidCallback onPressed,
    VTheme theme = VTheme.white,
    double labelSize = 14,
    bool enabled = true,
    bool expand = false,
    VButtonKind kind = VButtonKind.primary,
    VButtonSize size = VButtonSize.regular,
    Widget? icon,
  })  : type = VButtonType.regular,
        props = VButtonRegularProps(
            icon: icon,
            expand: expand,
            theme: theme,
            label: label,
            labelSize: labelSize,
            enabled: enabled,
            kind: kind,
            size: size,
            onPressed: onPressed),
        super(key: key);

  VButton.icon({
    Key? key,
    bool enabled = true,
    required Widget icon,
    required VoidCallback onPressed,
    VTheme theme = VTheme.white,
    VButtonKind kind = VButtonKind.primary,
    VButtonSize size = VButtonSize.regular,
    required String iconDescription,
    VTooltipAlignment? tooltipAlignment,
    VTooltipPosition? tooltipPosition,
  })  : type = VButtonType.icon,
        props = VButtonIconOnlyProps(
            enabled: enabled,
            icon: icon,
            theme: theme,
            onPressed: onPressed,
            iconDescription: iconDescription,
            kind: kind,
            size: size,
            tooltipAlignment: tooltipAlignment,
            tooltipPosition: tooltipPosition),
        super(key: key);
  final VButtonBaseProps props;
  final VButtonType type;

  @override
  VButtonState createState() => VButtonState();
}

class VButtonState extends State<VButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.type == VButtonType.icon) {
      return _VButtonIconOnly(props: widget.props as VButtonIconOnlyProps);
    }

    return _VButtonRegular(props: widget.props as VButtonRegularProps);
  }
}

abstract class _VButtonBase extends StatefulWidget {
  VButtonBaseProps get props;
}

class _VButtonRegular extends _VButtonBase {
  _VButtonRegular({required this.props});

  @override
  final VButtonRegularProps props;

  @override
  _VButtonRegularState createState() => _VButtonRegularState();
}

class _VButtonRegularState extends State<_VButtonRegular>
    with _VButtonStateBase {
  List<Widget> _buildTrailing() {
    final result = <Widget>[];

    /// determine the * [SizedBox] width

    if (widget.props.expand) {
      result.add(const Expanded(child: SizedBox()));
    } else if (widget.props.kind == VButtonKind.ghost) {
      if (widget.props.icon != null) {
        result.add(const SizedBox(width: 8));
      }
    } else if (widget.props.icon != null) {
      result.add(const SizedBox(width: 32));
    } else {
      result.add(const SizedBox(width: 64));
    }

    /// adding the button icon

    if (widget.props.icon != null) {
      result.add(widget.props.icon!);
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    _setStateVariables();

    return VInheritedStyles(
        styles: {'button-content-color': _Styles.contentColor[theme]!
            [kind]![state]!},
        inheritFromParent: true,
        child: VEnable(
            value: isEnabled,
            child: IgnorePointer(
                ignoring: !isEnabled,
                child: GestureDetector(
                    onTap: widget.props.onPressed,
                    onTapDown: (_) => setState(() => focused = true),
                    onTapUp: (_) => setState(() => focused = false),
                    onTapCancel: () => setState(() => focused = false),
                    child: Stack(children: [
                      Positioned.fill(
                          child: AnimatedContainer(
                              height: dimensions.height,
                              duration:
                                  _Styles.backgroundColorAnimation
                                  [theme]![kind]!['duration']!,
                              curve:
                                  _Styles.backgroundColorAnimation[theme]!
                                  [kind]!['curve']!,
                              decoration: BoxDecoration(
                                  color: _Styles.backgroundColor
                                  [theme]![kind]![state]!))),
                      Positioned.fill(
                        child: AnimatedContainer(
                          height: dimensions.height,
                          duration:
                              _Styles.firstBorderAnimation[widget.props.theme]!
                              [kind]!['duration'],
                          curve:
                              _Styles.firstBorderAnimation[widget.props.theme]!
                              [kind]!['curve'],
                          decoration: BoxDecoration(
                              border: _Styles.firstBorder[widget.props.theme]!
                              [kind]![state]!),
                        ),
                      ),
                      Positioned.fill(
                          child: AnimatedContainer(
                        height: dimensions.height,
                        duration:
                            _Styles.secondBorderAnimation[widget.props.theme]!
                            [kind]!['duration'],
                        curve:
                            _Styles.secondBorderAnimation[widget.props.theme]!
                            [kind]!['curve'],
                        decoration: BoxDecoration(
                            border:
                                _Styles.secondBorder[widget.props.theme]!
                                [kind]![state]!),
                      )),
                      SizedBox(
                          height: dimensions.height,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      _Styles.padding[widget.props.theme]!
                                      [kind]![widget.props.size]!),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    VText(widget.props.label,
                                        style: TextStyle(
                                            fontSize: widget.props.labelSize,
                                            color: _Styles
                                                .contentColor[widget.props.theme]![kind]![state]!)),
                                    ..._buildTrailing()
                                  ])))
                    ])))));
  }
}

class _VButtonIconOnly extends _VButtonBase {
  _VButtonIconOnly({required this.props});

  @override
  final VButtonIconOnlyProps props;

  @override
  _VButtonIconOnlyState createState() => _VButtonIconOnlyState();
}

class _VButtonIconOnlyState extends State<_VButtonIconOnly>
    with _VButtonStateBase {
  @override
  Widget build(BuildContext context) {
    _setStateVariables();

    return VInheritedStyles(
        styles: {'button-content-color':
          _Styles.contentColor
          [widget.props.theme]![kind]![state]!},
        child: VEnable(
            value: isEnabled,
            child: IgnorePointer(
                ignoring: !isEnabled,
                child: GestureDetector(
                    onTap: widget.props.onPressed,
                    child: GestureDetector(
                        onTap: widget.props.onPressed,
                        onTapDown: (_) => setState(() => focused = true),
                        onTapUp: (_) => setState(() => focused = false),
                        onTapCancel: () => setState(() => focused = false),
                        child: Stack(children: <Widget>[
                          AnimatedContainer(
                            width: dimensions.width,
                            height: dimensions.height,
                            duration:
                                _Styles.backgroundColorAnimation[widget.props.theme]!
                                [kind]!['duration'],
                            curve:
                                _Styles.backgroundColorAnimation[widget.props.theme]!
                                [kind]!['curve'],
                            decoration: BoxDecoration(
                                color: _Styles.backgroundColor[widget.props.theme]!
                                [widget.props.kind]![state]!),
                          ),
                          AnimatedContainer(
                            width: dimensions.width,
                            height: dimensions.height,
                            duration:
                                _Styles.firstBorderAnimation[widget.props.theme]!
                                [kind]!['duration'],
                            curve:
                                _Styles.firstBorderAnimation[widget.props.theme]!
                                [kind]!['curve'],
                            decoration: BoxDecoration(
                                border:
                                    _Styles.firstBorder[widget.props.theme]!
                                    [kind]![state]!
                            ),
                          ),
                          AnimatedContainer(
                            width: dimensions.width,
                            height: dimensions.height,
                            duration:
                                _Styles.secondBorderAnimation[widget.props.theme]!
                                [kind]!['duration'],
                            curve:
                                _Styles.secondBorderAnimation[widget.props.theme]!
                                [kind]!['curve'],
                            decoration: BoxDecoration(
                                border: _Styles.secondBorder[widget.props.theme]!
                                [kind]![state]!),
                          ),
                          SizedBox(
                            width: dimensions.width,
                            height: dimensions.height,
                            child: Align(
                                alignment: Alignment.center,
                                child: widget.props.icon),
                          )
                        ]))))));
  }
}
