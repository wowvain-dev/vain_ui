import 'package:flutter/widgets.dart';


/// Importing the shared internal dependencies
import '../../shared/shared.dart';

/// Importing the internal widget dependencies
import 'button.widget.dart';

abstract class VButtonStyles {
  /// Defining the content color of the button, based on the currently chosen
  /// theme of the design and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static Map<VTheme, Map<VButtonKind, Map<VWidgetState, Color>>> contentColor = {
    VTheme.white: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.gray[100]!,
        VWidgetState.disabled: VColors.gray[70]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.blue[40]!,
        VWidgetState.focused: VColors.blue[40]!,
        VWidgetState.disabled: VColors.gray[70]!,
      }
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.gray[100]!,
        VWidgetState.disabled: VColors.gray[70]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.blue[40]!,
        VWidgetState.focused: VColors.blue[40]!,
        VWidgetState.disabled: VColors.gray[70]!,
      }
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.gray[100]!,
        VWidgetState.disabled: VColors.gray[70]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.blue[40]!,
        VWidgetState.focused: VColors.blue[40]!,
        VWidgetState.disabled: VColors.gray[70]!,
      }
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.white,
        VWidgetState.disabled: VColors.gray[60]!
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.white,
        VWidgetState.focused: VColors.gray[100]!,
        VWidgetState.disabled: VColors.gray[70]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.blue[40]!,
        VWidgetState.focused: VColors.blue[40]!,
        VWidgetState.disabled: VColors.gray[70]!,
      }
    }
  };

  /// Defining the background color of the button, based on the currently chosen
  /// theme of the design and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static Map<VTheme, Map<VButtonKind, Map<VWidgetState, Color>>> backgroundColor = {
    VTheme.white: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.blue,
        VWidgetState.focused: VColors.blue[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.gray[60]!,
        VWidgetState.focused: VColors.gray[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.red[60]!,
        VWidgetState.focused: VColors.red[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.gray[100]!,
        VWidgetState.focused: VColors.gray[10]!,
        VWidgetState.disabled: VColors.gray[100]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.transparent,
        VWidgetState.focused: VColors.gray[80]!,
        VWidgetState.disabled: VColors.gray[100]!
      }

    },
    VTheme.gray10: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.blue,
        VWidgetState.focused: VColors.blue[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.gray[60]!,
        VWidgetState.focused: VColors.gray[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.red[60]!,
        VWidgetState.focused: VColors.red[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.gray[100]!,
        VWidgetState.focused: VColors.gray[10]!,
        VWidgetState.disabled: VColors.gray[100]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.transparent,
        VWidgetState.focused: VColors.gray[80]!,
        VWidgetState.disabled: VColors.gray[100]!
      }
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.blue,
        VWidgetState.focused: VColors.blue[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.gray[60]!,
        VWidgetState.focused: VColors.gray[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.red[60]!,
        VWidgetState.focused: VColors.red[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.gray[100]!,
        VWidgetState.focused: VColors.gray[10]!,
        VWidgetState.disabled: VColors.gray[100]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.transparent,
        VWidgetState.focused: VColors.gray[80]!,
        VWidgetState.disabled: VColors.gray[100]!
      }
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        VWidgetState.enabled: VColors.blue,
        VWidgetState.focused: VColors.blue[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: VColors.gray[60]!,
        VWidgetState.focused: VColors.gray[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.danger: {
        VWidgetState.enabled: VColors.red[60]!,
        VWidgetState.focused: VColors.red[70]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: VColors.gray[100]!,
        VWidgetState.focused: VColors.gray[10]!,
        VWidgetState.disabled: VColors.gray[100]!
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: VColors.transparent,
        VWidgetState.focused: VColors.gray[80]!,
        VWidgetState.disabled: VColors.gray[100]!
      }
    }
  };

  /// Defining the style of the first border depending on the currently chosen theme
  /// of the design and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static final Map<VTheme, Map<VButtonKind, Map<VWidgetState, Border>>> firstBorder = {
    VTheme.white: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },

    },
    VTheme.gray100: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.gray[100]!, width: 4),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    }
  };

  /// Defining the style of the second border depending on the current theme
  /// and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static final Map<VTheme, Map<VButtonKind, Map<VWidgetState, Border>>> secondBorder = {
    VTheme.white: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.white, width: 1),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.gray[70]!, width: 1),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.white, width: 1),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.gray[70]!, width: 1),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.white, width: 1),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.gray[70]!, width: 1),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.secondary: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.danger: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
      VButtonKind.tertiary: {
        VWidgetState.enabled: Border.all(color: VColors.white, width: 1),
        VWidgetState.focused: Border.all(color: VColors.white, width: 2),
        VWidgetState.disabled: Border.all(color: VColors.gray[70]!, width: 1),
      },
      VButtonKind.ghost: {
        VWidgetState.enabled: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.focused: Border.all(color: VColors.transparent, width: 0),
        VWidgetState.disabled: Border.all(color: VColors.transparent, width: 0),
      },
    }
  };

  /// Defining the duration and curve of the background color animation depending
  /// on the current theme and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static final Map<VTheme, Map<VButtonKind, Map<String, dynamic>>> backgroundColorAnimation = {
    VTheme.white: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      }
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      }
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      }
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 65),
        'curve': Curves.easeInOut,
      }
    }
  };

  /// Defining the duration and curve of the first border animation depending
  /// on the current theme and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static final Map<VTheme, Map<VButtonKind, Map<String, dynamic>>> firstBorderAnimation = {
    VTheme.white: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 80),
        'curve': Curves.easeInOut,
      },
    }
  };

  /// Defining the duration and curve of the second border animation depending
  /// on the current theme and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static final Map<VTheme, Map<VButtonKind, Map<String, dynamic>>> secondBorderAnimation = {
    VTheme.white: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      }
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      }
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      }
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.secondary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.danger: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.tertiary: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      },
      VButtonKind.ghost: {
        'duration': const Duration(milliseconds: 0),
        'curve': Curves.easeInOut,
      }
    }
  };

  /// Defining the dimensions depending on the current theme and the kind of the button.
  ///
  /// [VTheme] options: `white`, `gray10`, `gray90`, `gray100`;
  /// [VButtonKind] options: `primary`, `secondary`, `tertiary`, `danger`, `ghost`;
  static final Map<VTheme, Map<VButtonKind, Map<VButtonSize, Size>>> dimensions = {
    VTheme.white: {
      VButtonKind.primary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.secondary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.danger: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.ghost: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      }
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.secondary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.danger: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.ghost: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      }
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.secondary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.danger: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.ghost: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      }
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.secondary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.danger: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      },
      VButtonKind.ghost: {
        VButtonSize.regular: const Size(48, 48),
        VButtonSize.md: const Size(40, 40),
        VButtonSize.sm: const Size(32, 32),
      }
    },
  };

  /// Defining the padding depending on the current theme and the kind of the button.
  static final Map<VTheme, Map<VButtonKind, Map<VButtonSize, double>>> padding = {
    VTheme.white: {
      VButtonKind.primary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.secondary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.danger: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.ghost: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      }
    },
    VTheme.gray10: {
      VButtonKind.primary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.secondary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.danger: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.ghost: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      }
    },
    VTheme.gray90: {
      VButtonKind.primary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.secondary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.danger: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.ghost: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      }
    },
    VTheme.gray100: {
      VButtonKind.primary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.secondary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.danger: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.tertiary: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      },
      VButtonKind.ghost: {
        VButtonSize.regular: 16.0,
        VButtonSize.md: 16.0,
        VButtonSize.sm: 13.0,
      }
    },
  };
}
