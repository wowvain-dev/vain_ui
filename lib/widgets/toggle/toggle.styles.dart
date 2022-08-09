import 'package:flutter/widgets.dart';

/// Importing the required widget components.
import 'toggle.widget.dart';

/// Importing the required internal shared dependencies.
import '../../shared/shared.dart';

abstract class VToggleStyles {
  /// Defining the properties of the Toggle animation based on the current
  /// theme.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static const Map<VTheme, Map<String, dynamic>> animation = {
    VTheme.white: {
      'duration': Duration(milliseconds: 200),
      'curve': Curves.linear,
    },
    VTheme.gray10: {
      'duration': Duration(milliseconds: 200),
      'curve': Curves.linear,
    },
    VTheme.gray90: {
      'duration': Duration(milliseconds: 200),
      'curve': Curves.linear,
    },
    VTheme.gray100: {
      'duration': Duration(milliseconds: 200),
      'curve': Curves.linear,
    },
  };

  /// Defining the dimensions of the widget based on the current theme.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static const Map<VTheme, Map<VToggleSize, Size>> dimensions = {
    VTheme.white: {VToggleSize.sm: Size(32, 16), VToggleSize.md: Size(48, 24)},
    VTheme.gray10: {VToggleSize.sm: Size(32, 16), VToggleSize.md: Size(48, 24)},
    VTheme.gray90: {VToggleSize.sm: Size(32, 16), VToggleSize.md: Size(48, 24)},
    VTheme.gray100: {
      VToggleSize.sm: Size(32, 16),
      VToggleSize.md: Size(48, 24)
    },
  };

  /// Defining the outline color of the widget based on the current theme.
  ///
  /// TODO(wowvain-dev): CHOOSE PROPER COLORS PER THEME
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static const Map<VTheme, Color> outlineColor = {
    VTheme.white: VColors.blue,
    VTheme.gray10: VColors.blue,
    VTheme.gray90: VColors.white0,
    VTheme.gray100: VColors.white0,
  };

  /// Defining the indicator color of the widget based on the current theme and state.
  ///
  /// TODO(wowvain-dev): CHOOSE PROPER COLORS PER THEME
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  /// VWidgetState options: `enabled`, `disabled`;
  static Map<VTheme, Map<VWidgetState, Color>> indicatorColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.white0,
      VWidgetState.disabled: VColors.gray[70]!,
    }
  };

  /// Defining the label color of the widget based on the current theme and state.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  /// VWidgetState options: `enabled`, `disabled`;
  static Map<VTheme, Map<VWidgetState, Color>> labelColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[70]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[70]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[30]!,
      VWidgetState.disabled: VColors.gray[70]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[30]!,
      VWidgetState.disabled: VColors.gray[70]!,
    },
  };

  /// Defining the fill color of the widget based on the current theme,
  /// state and status.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  /// VWidgetState options: `enabled`, `disabled`;
  /// VToggleCheckStatus options: `checked`, `unchecked`;
  static Map<VTheme, Map<VWidgetState, Map<VToggleCheckStatus, Color>>>
      fillColor = {
    VTheme.white: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[60]!,
        VToggleCheckStatus.unchecked: VColors.gray[50]!,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.gray[30]!,
        VToggleCheckStatus.unchecked: VColors.gray[30]!,
      }
    },
    VTheme.gray10: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[60]!,
        VToggleCheckStatus.unchecked: VColors.gray[50]!,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.gray[30]!,
        VToggleCheckStatus.unchecked: VColors.gray[30]!,
      }
    },
    VTheme.gray90: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[40]!,
        VToggleCheckStatus.unchecked: VColors.gray[60]!,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.gray[70]!,
        VToggleCheckStatus.unchecked: VColors.gray[70]!,
      }
    },
    VTheme.gray100: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[40]!,
        VToggleCheckStatus.unchecked: VColors.gray[60]!,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.gray[70]!,
        VToggleCheckStatus.unchecked: VColors.gray[70]!,
      }
    }
  };

  /// Defining the checkmark color of the widget based on the current theme,
  /// state and status.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  /// VWidgetState options: `enabled`, `disabled`;
  /// VToggleCheckStatus options: `checked`, `unchecked`;
  static Map<VTheme, Map<VWidgetState, Map<VToggleCheckStatus, Color>>>
      checkmarkColor = {
    VTheme.white: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[60]!,
        VToggleCheckStatus.unchecked: VColors.transparent,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.transparent,
        VToggleCheckStatus.unchecked: VColors.transparent
      }
    },
    VTheme.gray10: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[60]!,
        VToggleCheckStatus.unchecked: VColors.transparent,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.transparent,
        VToggleCheckStatus.unchecked: VColors.transparent
      }
    },
    VTheme.gray90: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[40]!,
        VToggleCheckStatus.unchecked: VColors.transparent,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.transparent,
        VToggleCheckStatus.unchecked: VColors.transparent,
      }
    },
    VTheme.gray100: {
      VWidgetState.enabled: {
        VToggleCheckStatus.checked: VColors.green[40]!,
        VToggleCheckStatus.unchecked: VColors.transparent,
      },
      VWidgetState.disabled: {
        VToggleCheckStatus.checked: VColors.transparent,
        VToggleCheckStatus.unchecked: VColors.transparent
      }
    }
  };
}
