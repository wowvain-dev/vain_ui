/// FOR INTERNAL USE ONLY
///
/// ALL RIGHTS RESERVED "The Grid Inc. / wowvain-dev"

import 'package:flutter/material.dart';

/// TODO(wowvain-dev): HUGE COLOR REFORM TO-DO
/// IMPLEMENT MAIN COLOR TYPES (icon-disabled; icon-primary, etc.)
/// FOR EASE OF IMPLEMENTATION IN WIDGETS
///
/// THIS REFORM INCLUDES REFACTORING MOST OF THE `.styles.dart` FILES ASWELL

/// Defines a single color as well as 10 shades of the same color.
///
/// The color's shades are accessed using an index. The greater the index,
/// the darker the color will be. There are 10 valid indices: 10, 20, 30, ..., 100.
/// The value of this color should be the same as the value of index 40.
class VColor extends ColorSwatch<int> {
  /// Creates a color swatch with a number of shades.
  ///
  /// The `primary` parameter should be the 32 bit ARGB value of the primary
  /// values in the swatch, as would be passed to the [VColor.new] constructor
  /// for that same color, and as is exposed by [value].
  /// (this is different from the specific index of the color in the swatch.)
  const VColor(int primary, Map<int, Color> swatch) : super(primary, swatch);

  /// The lightest shade.
  Color get shade10 => this[10]!;

  /// The second lightest shade.
  Color get shade20 => this[20]!;

  /// The default shade.
  Color get shade30 => this[30]!;

  /// The seventh darkest shade.
  Color get shade40 => this[40]!;

  /// The sixth darkest shade.
  Color get shade50 => this[50]!;

  /// The fifth darkest shade.
  Color get shade60 => this[60]!;

  /// The fourth darkest shade.
  Color get shade70 => this[70]!;

  /// The third darkest shade.
  Color get shade80 => this[80]!;

  /// The second darkest shade.
  Color get shade90 => this[90]!;

  /// The first darkest shade.
  Color get shade100 => this[100]!;
}

/// Defines a single hover color as well as 10 shades of the same color.
///
/// The color's shades are accessed using an index. The greater the index,
/// the darker the color will be. There are 10 valid indices: 10, 20, 30, ..., 100.
/// The value of this color should be the same as the value of index 40.
class VHoverColor extends ColorSwatch<int> {
  /// Creates a color swatch with a variety of shades appropriate for hover colors.
  const VHoverColor(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  /// The lightest shade.
  Color get shade10 => this[10]!;

  /// The second lightest shade.
  Color get shade20 => this[20]!;

  /// The default shade.
  Color get shade30 => this[30]!;

  /// The seventh darkest shade.
  Color get shade40 => this[40]!;

  /// The sixth darkest shade.
  Color get shade50 => this[50]!;

  /// The fifth darkest shade.
  Color get shade60 => this[60]!;

  /// The fourth darkest shade.
  Color get shade70 => this[70]!;

  /// The third darkest shade.
  Color get shade80 => this[80]!;

  /// The second darkest shade.
  Color get shade90 => this[90]!;

  /// The first darkest shade.
  Color get shade100 => this[100]!;
}

/// [Color] and [ColorSwatch] constants which represent Vain design's
/// color palette.
///
/// Vain design uses swatches that has colors from 10 to 100 in increments of tens.
/// The smaller the number, the more pale the color. The greater the number, the
/// darker the color.
///
/// In addition, a series of blacks and whites is available for common opacities.
///
///
/// To select a specific color from one of the swatches, acces the swatch using
/// an integer index for the specific color desired, as follows:
///
/// ```dart
/// Color selection = VColors.yellow[20]!; // Selects a rather pale yellow color.
/// ```
///
/// Each [ColorSwatch] constant is a color and can be used directly. For example:
///
/// ```dart
/// Container(
///   color: VColors.blue, // same as VColors.blue[30] or VColors.blue.shade30
/// )
/// ```
///
///
/// ## Blacks and Whites
///
/// These colors are identified by their transparency.
///
/// Some are very hard to see and should only ever be used for subtle effects.
///
/// The [VColors.transparent] color is completely invisible.
class VColors {
  // Prevent instantiation and extension.
  VColors._();

  /// Completely invisible.
  static const Color transparent = Color(0x00000000);

  /// Completely opaque black.
  /// used two naming schemes for convenience.
  static const Color black = Color(0xFF000000);
  static const Color black100 = Color(0xFF000000);

  /// Black with 87% opacity.
  ///
  /// This is a good contrasting color for text in light themes.
  static const Color black87 = Color(0xDD000000);

  /// Black with 54% opacity.
  ///
  /// This is a color commonly used for headings in light themes. It's also used
  /// as the mask color behind dialogs.
  static const Color black54 = Color(0x8A000000);

  /// Black with 45% opacity.
  static const Color black45 = Color(0x73000000);

  /// Black with 38% opacity.
  ///
  /// For light themes, i.e. when the Theme's [ThemeData.brightness] is
  /// [Brightness.light], this color is used for disabled icons and for
  /// placeholder text in [DataTable].
  static const Color black38 = Color(0x61000000);

  /// Black with 26% opacity.
  ///
  /// Used for disabled radio buttons and the text of disabled flat buttons in
  /// light theme.
  static const Color black26 = Color(0x42000000);

  /// Black with 12% opacity.
  ///
  /// Used for the background of disabled raised buttons in light themes.
  static const Color black12 = Color(0x1F000000);

  /// Completely opaque white.
  /// used two naming formats for convenience.
  static const Color white = Color(0xFFFFFFFF);
  static const Color white0 = Color(0xFFFFFFFF);

  /// White with 70% opacity.
  static const Color white70 = Color(0xB3FFFFFF);

  /// White with 60% opacity.
  static const Color white60 = Color(0x99FFFFFF);

  /// White with 54% opacity.
  static const Color white54 = Color(0x8AFFFFFF);

  /// White with 38% opacity.
  static const Color white38 = Color(0x62FFFFFF);

  /// White with 30% opacity.
  static const Color white30 = Color(0x4DFFFFFF);

  /// White with 24% opacity.
  static const Color white24 = Color(0x3DFFFFFF);

  /// White with 12% opacity.
  static const Color white12 = Color(0x1FFFFFFF);

  /// White with 10% opacity.
  static const Color white10 = Color(0x1AFFFFFF);

  /// The yellow primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.yellow[30]
  /// );
  /// ```
  static const VColor yellow = VColor(_yellowPrimaryValue, <int, Color>{
    10: Color(0xFFFCF4D6),
    20: Color(0xFFFDDC69),
    30: Color(0xFFF1C21B), // primary
    40: Color(0xFFD2A106),
    50: Color(0xFFB28600),
    60: Color(0xFF8E6A00),
    70: Color(0xFF694E00),
    80: Color(0xFF483700),
    90: Color(0xFF302400),
    100: Color(0xFF1C1500),
  });
  static const int _yellowPrimaryValue = 0xFFF1C21B; // 30

  /// The yellow hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.yellowHover[30],
  /// );
  /// ```
  static const VHoverColor yellowHover =
      VHoverColor(_yellowHoverValue, <int, Color>{
    10: Color(0xFFF8E6A0),
    20: Color(0xFFFCCD27),
    30: Color(0xFFDDB00E), // primary
    40: Color(0xFFBC9005),
    50: Color(0xFF9E7700),
    60: Color(0xFF755800),
    70: Color(0xFF806000),
    80: Color(0xFF5C4600),
    90: Color(0xFF3D2E00),
    100: Color(0xFF332600),
  });
  static const int _yellowHoverValue = 0xFFDDB00E; // 30

  /// The orange primary color and switch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.orange[30]
  /// );
  /// ```
  static const VColor orange = VColor(_orangePrimaryValue, <int, Color>{
    10: Color(0xFFFFF2E8),
    20: Color(0xFFFFD9BE),
    30: Color(0xFFFFB784),
    40: Color(0xFFFF832B), // primary
    50: Color(0xFFEB6200),
    60: Color(0xFFBA4E00),
    70: Color(0xFF8A3800),
    80: Color(0xFF5E2900),
    90: Color(0xFF3E1A00),
    100: Color(0xFF231000),
  });
  static const int _orangePrimaryValue = 0xFFFF832B; // 40

  /// The orange hover swatch.
  ///
  /// ```
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.orange[30]
  /// );
  /// ```
  static const VHoverColor orangeHover =
      VHoverColor(_orangeHoverValue, <int, Color>{
    10: Color(0xFFFFE2CC),
    20: Color(0xFFFFC69E),
    30: Color(0xFFFF9D57),
    40: Color(0xFFFA6800), // primary
    50: Color(0xFFCC5500),
    60: Color(0xFF9E4200),
    70: Color(0xFFA84400),
    80: Color(0xFF753300),
    90: Color(0xFF522200),
    100: Color(0xFF421E00),
  });
  static const int _orangeHoverValue = 0xFFFA6800; // 40

  /// The red primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.red[30]
  /// );
  /// ```
  static const VColor red = VColor(_redPrimaryValue, <int, Color>{
    10: Color(0xFFFFF1F1),
    20: Color(0xFFFFD7D9),
    30: Color(0xFFFFB3B8),
    40: Color(0xFFFF8389),
    50: Color(0xFFFA4D56),
    60: Color(0xFFDA1E28), // primary
    70: Color(0xFFA2191F),
    80: Color(0xFF750E13),
    90: Color(0xFF520408),
    100: Color(0xFF2D0709),
  });

  static const int _redPrimaryValue = 0xFFDA1E28; // 60

  /// The red hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.redHover[30],
  /// )
  /// ```
  static const VHoverColor redHover = VHoverColor(_redHoverValue, <int, Color>{
    100: Color(0xFF540D11),
    90: Color(0xFF66050A),
    80: Color(0xFF921118),
    70: Color(0xFFC21E25),
    60: Color(0xFFB81922), // primary
    50: Color(0xFFEE0713),
    40: Color(0xFFFF6168),
    30: Color(0xFFFF99A0),
    20: Color(0xFFFFC2C5),
    10: Color(0xFFFFE0E0)
  });
  static const int _redHoverValue = 0xFFB81922; // 60

  /// The magenta primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.magenta[40]
  /// )
  /// ```
  static const VColor magenta = VColor(_magentaPrimaryValue, <int, Color>{
    10: Color(0xFFFFF0F7),
    20: Color(0xFFFFD6E8),
    30: Color(0xFFFFAFD2),
    40: Color(0xFFFF57A0),
    50: Color(0xFFEE5396),
    60: Color(0xFFD02670), // primary
    70: Color(0xFF9F1853),
    80: Color(0xFF740936),
    90: Color(0xFF510224),
    100: Color(0xFF2A0A18)
  });
  static const int _magentaPrimaryValue = 0xFFD02670; // 60

  /// The magenta hover color swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.magentaHover[40]
  /// )
  /// ```
  static const VHoverColor magentaHover =
      VHoverColor(_magentaHoverValue, <int, Color>{
    100: Color(0xFF53142F),
    90: Color(0xFF68032E),
    80: Color(0xFF8E0B43),
    70: Color(0xFFBF1D63),
    60: Color(0xFFB0215F), // primary
    50: Color(0xFFE3176F),
    40: Color(0xFFFF57A0),
    30: Color(0xFFFF94C3),
    20: Color(0xFFFFBDDA),
    10: Color(0xFFFFE0EF)
  });
  static const int _magentaHoverValue = 0xFFB0215F; // 60

  /// The purple primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.purple[40],
  /// )
  /// ```
  static const VColor purple = VColor(_purplePrimaryValue, <int, Color>{
    10: Color(0xFFF6F2FF),
    20: Color(0xFFE8DAFF),
    30: Color(0xFFD4BBFF),
    40: Color(0xFFBE95FF),
    50: Color(0xFFA56EFF),
    60: Color(0xFF8A3FFC), // primary
    70: Color(0xFF6929C4),
    80: Color(0xFF491D8B),
    90: Color(0xFF31135E),
    100: Color(0xFF1C0F30)
  });
  static const int _purplePrimaryValue = 0xFF8A3FFC; // 60

  /// The purple hover color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.purpleHover[40]
  ///)
  /// ```
  static const VHoverColor purpleHover =
      VHoverColor(_purpleHoverValue, <int, Color>{
    100: Color(0xFF341C59),
    90: Color(0xFF40197B),
    80: Color(0xFF5B24AD),
    70: Color(0xFF7C3DD6),
    60: Color(0xFF7822FB), // primary
    50: Color(0xFF9352FF),
    40: Color(0xFFAE6AFF),
    30: Color(0xFFC5A3FF),
    20: Color(0xFFDCC7FF),
    10: Color(0xFFEDE5FF)
  });
  static const int _purpleHoverValue = 0xFFAE6AFF; // 60

  /// The blue primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.blue[30]
  /// );
  /// ```
  static const VColor blue = VColor(_bluePrimaryValue, <int, Color>{
    10: Color(0xFFEDF5FF),
    20: Color(0xFFD0E2FF),
    30: Color(0xFFA6C8FF),
    40: Color(0xFF78A9FF),
    50: Color(0xFF4589FF),
    60: Color(0xFF0F62FE), // primary
    70: Color(0xFF0043CE),
    80: Color(0xFF002D9C),
    90: Color(0xFF001D6C),
    100: Color(0xFF001141)
  });
  static const int _bluePrimaryValue = 0xFF0F62FE; // 60

  /// The blue hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.blueHover[30]
  /// )
  /// ```
  static const VHoverColor blueHover =
      VHoverColor(_blueHoverValue, <int, Color>{
    100: Color(0xFF001F74),
    90: Color(0xFF00258A),
    80: Color(0xFF0039C7),
    70: Color(0xFF0053FF),
    60: Color(0xFF0050E6),
    50: Color(0xFF1F70FF),
    40: Color(0xFF5C97FF),
    30: Color(0xFF8AB6FF),
    20: Color(0xFFB8D3FF),
    10: Color(0xFFDBEBFF)
  });
  static const int _blueHoverValue = 0xFF0050E6;

  /// The cyan primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.cyan[30]
  /// )
  /// ```
  static const VColor cyan = VColor(_cyanPrimaryValue, <int, Color>{
    10: Color(0xFFE5F6FF),
    20: Color(0xFFBAE6FF),
    30: Color(0xFF82CFFF),
    40: Color(0xFF33B1FF), // primary
    50: Color(0xFF1192E8),
    60: Color(0xFF0072C3),
    70: Color(0xFF00539A),
    80: Color(0xFF003A6D),
    90: Color(0xFF012749),
    100: Color(0xFF061727)
  });
  static const int _cyanPrimaryValue = 0xFF33B1FF; // 40

  /// The cyan hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.cyanHover[30]
  /// )
  /// ```
  static const VHoverColor cyanHover =
      VHoverColor(_cyanHoverValue, <int, Color>{
    10: Color(0xFFCCEEFF),
    20: Color(0xFF99DAFF),
    30: Color(0xFF57BEFF),
    40: Color(0xFF059FFF), // primary
    50: Color(0xFF0F7EC8),
    60: Color(0xFF005FA3),
    70: Color(0xFF0066BD),
    80: Color(0xFF00498A),
    90: Color(0xFF013360),
    100: Color(0xFF0B2947)
  });
  static const int _cyanHoverValue = 0xFF059FFF; // 40

  /// The teal primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.teal[30]
  /// )
  /// ```
  static const VColor teal = VColor(_tealPrimaryValue, <int, Color>{
    10: Color(0xFFD9FBFB),
    20: Color(0xFF9EF0F0),
    30: Color(0xFF3DDBD9),
    40: Color(0xFF08BDBA),
    50: Color(0xFF009D9A), // primary
    60: Color(0xFF007D79),
    70: Color(0xFF005D5D),
    80: Color(0xFF004144),
    90: Color(0xFF022B30),
    100: Color(0xFF081A1C)
  });
  static const int _tealPrimaryValue = 0xFF009D9A; // 50

  /// The teal hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.tealHover[30]
  /// );
  /// ```
  static const VHoverColor tealHover =
      VHoverColor(_tealHoverValue, <int, Color>{
    10: Color(0xFFACF6F6),
    20: Color(0xFF57E5E5),
    30: Color(0xFF25CAC8),
    40: Color(0xFF07ABA9),
    50: Color(0xFF008A87), // primary
    60: Color(0xFF006B68),
    70: Color(0xFF007070),
    80: Color(0xFF005357),
    90: Color(0xFF033940),
    100: Color(0xFF0F3034)
  });
  static const int _tealHoverValue = 0xFF008A87; // 50

  /// The green primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.green[30]
  /// );
  /// ```
  static const VColor green = VColor(_greenPrimaryValue, <int, Color>{
    10: Color(0xFFDEFBE6),
    20: Color(0xFFA7F0BA),
    30: Color(0xFF6FDC8C),
    40: Color(0xFF42BE65),
    50: Color(0xFF24A148),
    60: Color(0xFF198038), // primary
    70: Color(0xFF0E6027),
    80: Color(0xFF044317),
    90: Color(0xFF022D0D),
    100: Color(0xFF071908),
  });
  static const int _greenPrimaryValue = 0xFF198038; // 60

  /// The green hover swatch.
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.greenHover[30]
  /// );
  /// ```
  static const VHoverColor greenHover =
      VHoverColor(_greenHoverValue, <int, Color>{
    10: Color(0xFFB6F6C8),
    20: Color(0xFF74E792),
    30: Color(0xFF36CE5E),
    40: Color(0xFF3BAB5A),
    50: Color(0xFF208E3F),
    60: Color(0xFF166F31), // primary
    70: Color(0xFF11742F),
    80: Color(0xFF05521C),
    90: Color(0xFF033B11),
    100: Color(0xFF0D300F)
  });
  static const int _greenHoverValue = 0xFF166F31; // 60

  /// The cool gray primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.coolGray[30]
  /// )
  /// ```
  static const VColor coolGray = VColor(_coolGrayPrimaryValue, <int, Color>{
    10: Color(0xFFF2F4F8),
    20: Color(0xFFDDE1E6),
    30: Color(0xFFC1C7CD),
    40: Color(0xFFA2A9B0), // primary
    50: Color(0xFF878D96),
    60: Color(0xFF697077),
    70: Color(0xFF4D5358),
    80: Color(0xFF343A3F),
    90: Color(0xFF21272A),
    100: Color(0xFF121619)
  });
  static const int _coolGrayPrimaryValue = 0xFFA2A9B0; // 40

  /// The cool gray hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.coolGrayHover[30]
  /// );
  /// ```
  static const VHoverColor coolGrayHover =
      VHoverColor(_coolGrayHoverValue, <int, Color>{
    10: Color(0xFFE4E9F1),
    20: Color(0xFFCDD3DA),
    30: Color(0xFFADB5BD),
    40: Color(0xFF9199A1), // primary
    50: Color(0xFF757B85),
    60: Color(0xFF585E64),
    70: Color(0xFF5D646A),
    80: Color(0xFF434A51),
    90: Color(0xFF2B3236),
    100: Color(0xFF222A2F)
  });
  static const int _coolGrayHoverValue = 0xFF9199A1; // 40

  /// The gray primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.gray[30]
  /// );
  /// ```
  static const VColor gray = VColor(_grayPrimaryValue, <int, Color>{
    10: Color(0xFFF4F4F4),
    20: Color(0xFFE0E0E0),
    30: Color(0xFFC6C6C6),
    40: Color(0xFFA8A8A8),
    50: Color(0xFF8D8D8D), // primary
    60: Color(0xFF6F6F6F),
    70: Color(0xFF525252),
    80: Color(0xFF393939),
    90: Color(0xFF262626),
    100: Color(0xFF161616)
  });
  static const int _grayPrimaryValue = 0xFF8D8D8D; // 50

  /// The gray hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.grayHover[30]
  /// );
  /// ```
  static const VHoverColor grayHover =
      VHoverColor(_grayHoverValue, <int, Color>{
    10: Color(0xFFE8E8E8),
    20: Color(0xFFD1D1D1),
    30: Color(0xFFB5B5B5),
    40: Color(0xFF999999),
    50: Color(0xFF7A7A7A), // primary
    60: Color(0xFF5E5E5E),
    70: Color(0xFF636363),
    80: Color(0xFF474747),
    90: Color(0xFF333333),
    100: Color(0xFF292929)
  });
  static const int _grayHoverValue = 0xFF7A7A7A; // 50

  /// The warm gray primary color and swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.warmGray[30]
  /// );
  /// ```
  static const VColor warmGray = VColor(_warmGrayPrimaryValue, <int, Color>{
    10: Color(0xFFF7F3F2),
    20: Color(0xFFE5E0DF),
    30: Color(0xFFCAC5C4),
    40: Color(0xFFADA8A8),
    50: Color(0xFF8F8B8B), // primary
    60: Color(0xFF726E6E),
    70: Color(0xFF565151),
    80: Color(0xFF3C3838),
    90: Color(0xFF272525),
    100: Color(0xFF171414)
  });
  static const int _warmGrayPrimaryValue = 0xFF8F8B8B; // 50

  /// The warm gray hover swatch.
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: VColors.warmGreyHover[30]
  /// )
  /// ```
  static const VHoverColor warmGrayHover =
      VHoverColor(_warmGrayHoverValue, <int, Color>{
    10: Color(0xFFF0E8E6),
    20: Color(0xFFD8D0CF),
    30: Color(0xFFB9B3B1),
    40: Color(0xFF9C9696),
    50: Color(0xFF7F7B7B),
    60: Color(0xFF605D5D),
    70: Color(0xFF696363),
    80: Color(0xFF4C4848),
    90: Color(0xFF343232),
    100: Color(0xFF2C2626)
  });
  static const int _warmGrayHoverValue = 0xFF7F7B7B; // 50
}
