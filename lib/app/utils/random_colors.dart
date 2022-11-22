import 'dart:math';
import 'dart:ui';

/// Return Color object, using random values in RGB color system
Color randomColorGenerator() {
  final Random random = Random();
  const int maxColorValue = 255;

  return Color.fromRGBO(
    random.nextInt(maxColorValue),
    random.nextInt(maxColorValue),
    random.nextInt(maxColorValue),
    1.0,
  );
}
