/// Importing the required widget components.
import 'text_field.widget.dart';

extension VValidationKindExtension on VValidationKind {
  VTextFieldKind get toTextFieldKind {
    if (this == VValidationKind.success) return VTextFieldKind.success;
    if (this == VValidationKind.warning) return VTextFieldKind.warning;
    return VTextFieldKind.error;
  }
}
