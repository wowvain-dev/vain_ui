import 'package:flutter/widgets.dart';

/// Importing the required widget components.
import 'form.widget.dart';

extension VFormContextExtension on BuildContext {
  VFormState? get vform {
    return VForm.of(this);
  }
}