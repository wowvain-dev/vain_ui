import 'package:flutter/widgets.dart';

/// Importing the required shared internal dependencies.
import '../../shared/shared.dart';

abstract class VFormStyles {
  /// Defining the padding of the form depending on the current theme.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static const Map<VTheme, EdgeInsets> padding = {
    VTheme.white: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
    VTheme.gray10: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
    VTheme.gray90: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
    VTheme.gray100: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
  };

  /// Defining the background color of the form depending on the current theme,
  /// and the state of the form.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  /// VWidgetState options: `enabled`, `disabled`;
  static Map<VTheme, Map<VWidgetState, Color>> backgroundColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.white,
      VWidgetState.focused: VColors.white,
      VWidgetState.disabled: VColors.white,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[10]!,
      VWidgetState.focused: VColors.gray[10]!,
      VWidgetState.disabled: VColors.gray[10]!,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[90]!,
      VWidgetState.focused: VColors.gray[90]!,
      VWidgetState.disabled: VColors.gray[90]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[100]!,
    }
  };
}
