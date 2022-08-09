import 'package:flutter/widgets.dart';
import 'enable.widget.dart';

extension VEnableContextExtension on BuildContext {
  bool get inheritedEnable {
    final temp = VEnable.of(this);

    return temp ?? true;
  }
}
