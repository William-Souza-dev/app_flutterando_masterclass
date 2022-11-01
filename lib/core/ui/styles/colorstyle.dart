import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';

class ColorStyle {
  static ColorStyle? _instance;

  ColorStyle._();
  static ColorStyle get i {
    _instance ??= ColorStyle._();
    return _instance!;
  }

  Color get backgroundcolor => const Color(0xff121517);
  Color get primarycolor => const Color(0xffEDF4F8);
  Color get secundarycolor => const Color(0xff51565A);
  Color get cardcolor => const Color(0xff172026);
  Color get buttoncolor => const Color(0xff055AA3);
}

extension ColorStyleExtensions on BuildContext {
  ColorStyle get colors => ColorStyle.i;
}
