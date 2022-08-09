import 'enums.dart';

extension getAccentTheme on VTheme {
  VTheme get accent {
    switch (this) {
      case VTheme.white:
        return VTheme.gray10;
      case VTheme.gray10:
        return VTheme.white;
      case VTheme.gray90:
        return VTheme.gray100;
      case VTheme.gray100:
        return VTheme.gray90;
    }
  }
}