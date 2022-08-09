import 'package:flutter/widgets.dart';

/// Importing the shared internal dependencies.
import '../../shared/shared.dart';

abstract class VCheckboxStyles {
  /// Defining the border animation's duration and curve based on the current
  /// theme.
  static const Map<VTheme, Map<String, dynamic>> borderAnimation = {
    VTheme.white: {
      'duration': Duration(milliseconds: 65),
      'curve': Curves.linear,
    },
    VTheme.gray10: {
      'duration': Duration(milliseconds: 65),
      'curve': Curves.linear,
    },
    VTheme.gray90: {
      'duration': Duration(milliseconds: 65),
      'curve': Curves.linear,
    },
    VTheme.gray100: {
      'duration': Duration(milliseconds: 65),
      'curve': Curves.linear,
    }
  };

  /// Defining the background animation's duration and curve based on the current
  /// theme.
  static const Map<VTheme, Map<String, dynamic>> backgroundAnimation = {
    VTheme.white: {
      'duration': Duration(milliseconds: 100),
      'curve': Curves.linear,
    },
    VTheme.gray10:{
      'duration': Duration(milliseconds: 100),
      'curve': Curves.linear,
    },
    VTheme.gray90: {
      'duration': Duration(milliseconds: 100),
      'curve': Curves.linear,
    },
    VTheme.gray100:{
      'duration': Duration(milliseconds: 100),
      'curve': Curves.linear,
    },
  };

  /// Defining the border color based on the current theme.
  static Map<VTheme, Map<VWidgetState, Color>> borderColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.focused: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.focused: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!,
    },
  };

  /// Defining the background color based on the current theme.
  static Map<VTheme, Map<VWidgetState, Color>> backgroundColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[30]!
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[30]!
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.focused: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.focused: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!
    }
  };

  /// Defining the label color based on the current theme.
  static Map<VTheme, Map<VWidgetState, Color>> labelColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[30]!
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[30]!
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[10]!,
      VWidgetState.focused: VColors.gray[10]!,
      VWidgetState.disabled: VColors.gray[70]!
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[10]!,
      VWidgetState.focused: VColors.gray[10]!,
      VWidgetState.disabled: VColors.gray[70]!
    },
  };

  /// Defining the checkmark color based on the current theme.
  static Map<VTheme, Map<VWidgetState, Color>> checkmarkColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.focused: VColors.white0,
      VWidgetState.disabled: VColors.white0,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.focused: VColors.white0,
      VWidgetState.disabled: VColors.white0,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[100]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.gray[100]!,
    },
  };
}