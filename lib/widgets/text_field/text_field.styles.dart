import 'package:flutter/material.dart';

/// Importing the required internal shared dependencies.
import '../../shared/shared.dart';

import 'text_field.widget.dart';

abstract class VTextFieldStyles {
  static const double labelFontSize = 14.0;
  static const String labelFontFamily = VFonts.primary;

  static const double textFontSize = 15.0;
  static const String textFontFamily = VFonts.primary;

  static const double hintFontSize = 15.0;
  static const String hintFontFamily = VFonts.primary;

  static const double descriptionFontSize = 14.0;
  static const String descriptionFontFamily = VFonts.primary;

  // static Color cursorColor = VColors.gray[10]!;

  /// Defining the cursor color based on the current theme of the design.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Color> cursorColor = {
    VTheme.white: VColors.gray[100]!,
    VTheme.gray10: VColors.gray[100]!,
    VTheme.gray90: VColors.gray[10]!,
    VTheme.gray100: VColors.gray[10]!,
  };

  /// Defining border color and styles based on the kind of the input and
  /// the current theme of the design.
  ///
  /// VTextFieldKind options: `primary`, `success`, `warning`, `error`;
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Map<VTextFieldKind, Map<VWidgetState, InputBorder>>>
      border = {
    VTheme.white: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.gray, width: 1),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        )
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.green[40]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.orange[50]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.red, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
    },
    VTheme.gray10: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.gray, width: 1),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        )
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.green[40]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.orange[50]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.red, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.blue, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
    },
    VTheme.gray90: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.gray, width: 1),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        )
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.green[40]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.orange[50]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.red[60]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
    },
    VTheme.gray100: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.gray[60]!, width: 1),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        )
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.green[40]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.orange[50]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: VColors.red[60]!, width: 2),
        ),
        VWidgetState.focused: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: VColors.white, width: 2),
        ),
        VWidgetState.disabled: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      },
    }
  };

  /// Defining the color of the description text found under the text
  /// input field based on the kind of the text field and the current theme of
  /// the design.
  ///
  /// VTextFieldKind options: `primary`, `success`, `warning`, `error`;
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Map<VTextFieldKind, Map<VWidgetState, Color>>>
      descriptionColor = {
    VTheme.white: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: VColors.gray[70]!,
        VWidgetState.focused: VColors.gray[70]!,
        VWidgetState.disabled: VColors.gray[30]!
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: VColors.green[40]!,
        VWidgetState.focused: VColors.green[40]!,
        VWidgetState.disabled: VColors.gray[30]!
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: VColors.orange[50]!,
        VWidgetState.focused: VColors.orange[50]!,
        VWidgetState.disabled: VColors.gray[30]!
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: VColors.red,
        VWidgetState.focused: VColors.red,
        VWidgetState.disabled: VColors.gray[30]!
      },
    },
    VTheme.gray10: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: VColors.gray[70]!,
        VWidgetState.focused: VColors.gray[70]!,
        VWidgetState.disabled: VColors.gray[30]!
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: VColors.green[40]!,
        VWidgetState.focused: VColors.green[40]!,
        VWidgetState.disabled: VColors.gray[30]!
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: VColors.orange[50]!,
        VWidgetState.focused: VColors.orange[50]!,
        VWidgetState.disabled: VColors.gray[30]!
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: VColors.red,
        VWidgetState.focused: VColors.red,
        VWidgetState.disabled: VColors.gray[30]!
      },
    },
    VTheme.gray90: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: VColors.gray[30]!,
        VWidgetState.focused: VColors.gray[30]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: VColors.green[40]!,
        VWidgetState.focused: VColors.green[40]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: VColors.orange[50]!,
        VWidgetState.focused: VColors.orange[50]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: VColors.red,
        VWidgetState.focused: VColors.red,
        VWidgetState.disabled: VColors.gray[70]!,
      },
    },
    VTheme.gray100: {
      VTextFieldKind.primary: {
        VWidgetState.enabled: VColors.gray[30]!,
        VWidgetState.focused: VColors.gray[30]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VTextFieldKind.success: {
        VWidgetState.enabled: VColors.green[40]!,
        VWidgetState.focused: VColors.green[40]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VTextFieldKind.warning: {
        VWidgetState.enabled: VColors.orange[50]!,
        VWidgetState.focused: VColors.orange[50]!,
        VWidgetState.disabled: VColors.gray[70]!,
      },
      VTextFieldKind.error: {
        VWidgetState.enabled: VColors.red,
        VWidgetState.focused: VColors.red,
        VWidgetState.disabled: VColors.gray[70]!,
      },
    }
  };

  /// Defining the color of the inputed text based on the current theme of
  /// the design.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Map<VWidgetState, Color>> textColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.transparent
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[100]!,
      VWidgetState.focused: VColors.gray[100]!,
      VWidgetState.disabled: VColors.transparent
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[10]!,
      VWidgetState.focused: VColors.gray[10]!,
      VWidgetState.disabled: VColors.transparent
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[10]!,
      VWidgetState.focused: VColors.gray[10]!,
      VWidgetState.disabled: VColors.transparent
    }
  };

  /// Defining the color of the label text found above the text field, based on
  /// the current theme of the design.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Map<VWidgetState, Color>> labelColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[70]!,
      VWidgetState.focused: VColors.gray[70]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[70]!,
      VWidgetState.focused: VColors.gray[70]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[30]!,
      VWidgetState.focused: VColors.gray[30]!,
      VWidgetState.disabled: VColors.gray[70]!
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[30]!,
      VWidgetState.focused: VColors.gray[30]!,
      VWidgetState.disabled: VColors.gray[70]!
    }
  };

  /// Defining the color of the hint found inside the field before the user
  /// starts typing, based on the current theme of the design.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `grat100`;
  static final Map<VTheme, Map<VWidgetState, Color>> hintColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[40]!,
      VWidgetState.focused: VColors.gray[40]!,
      VWidgetState.disabled: VColors.gray[30]!
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[40]!,
      VWidgetState.focused: VColors.gray[40]!,
      VWidgetState.disabled: VColors.gray[30]!
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[60]!,
      VWidgetState.focused: VColors.gray[60]!,
      VWidgetState.disabled: VColors.gray[50]!
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[60]!,
      VWidgetState.focused: VColors.gray[60]!,
      VWidgetState.disabled: VColors.gray[50]!
    }
  };

  /// Defining the color of the text field's background based on the current
  /// chosen theme of the design.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Map<VWidgetState, Color>> backgroundColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[10]!,
      VWidgetState.focused: VColors.gray[10]!,
      VWidgetState.disabled: VColors.gray[10]!,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.white,
      VWidgetState.focused: VColors.white,
      VWidgetState.disabled: VColors.white,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[80]!,
      VWidgetState.focused: VColors.gray[80]!,
      VWidgetState.disabled: VColors.gray[80]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[90]!,
      VWidgetState.focused: VColors.gray[90]!,
      VWidgetState.disabled: VColors.gray[90]!,
    }
  };

  /// Defining the color of the icon found inside the text field based on
  /// the currently chosen theme of the design.
  ///
  /// VTheme options: `white`, `gray10`, `gray90`, `gray100`;
  static final Map<VTheme, Map<VWidgetState, Color>> iconColor = {
    VTheme.white: {
      VWidgetState.enabled: VColors.gray[50]!,
      VWidgetState.focused: VColors.gray[50]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray10: {
      VWidgetState.enabled: VColors.gray[50]!,
      VWidgetState.focused: VColors.gray[50]!,
      VWidgetState.disabled: VColors.gray[30]!,
    },
    VTheme.gray90: {
      VWidgetState.enabled: VColors.gray[30]!,
      VWidgetState.focused: VColors.gray[30]!,
      VWidgetState.disabled: VColors.gray[50]!,
    },
    VTheme.gray100: {
      VWidgetState.enabled: VColors.gray[30]!,
      VWidgetState.focused: VColors.gray[30]!,
      VWidgetState.disabled: VColors.gray[50]!,
    }
  };
}
