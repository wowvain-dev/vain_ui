import 'package:flutter/widgets.dart';

/// Importing the required widget components.
import 'text_field.widget.dart';

class VValidationResult {
  VValidationResult({required this.kind, required this.message, this.icon});

  final String message;
  final Widget? icon;
  final VValidationKind kind;
}
