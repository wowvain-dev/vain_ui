import 'package:flutter/widgets.dart';

/// Importing the required widget components.
import 'inherited_styles.widget.dart';

extension VInheritedStylesContextExtension on BuildContext {
  StylesMap get styles {
    final inheritedStyles = VInheritedStyles.of(this);

    if (inheritedStyles == null) return {};

    return inheritedStyles;
  }
}
