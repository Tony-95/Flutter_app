import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:yuka/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(true, File(Images.icEmptyList).existsSync());
    expect(true, File(Images.nutriscoreA).existsSync());
    expect(true, File(Images.nutriscoreB).existsSync());
    expect(true, File(Images.nutriscoreC).existsSync());
    expect(true, File(Images.nutriscoreD).existsSync());
    expect(true, File(Images.nutriscoreE).existsSync());
  });
}
